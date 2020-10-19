#!/usr/bin/env python
# -*- coding: UTF-8 -*-
 
# import socket
# import json
import rospy
import socket 
from geometry_msgs.msg import Twist
from omniwheel_control.msg import move_base
from omniwheel_control.msg import num
from omniwheel_control.msg import wheels_trans
import math
import json
import socket
import signal
import sys
import struct
import threading




# def exit(signum, frame):
#     if connect_flag:
#         print('Disconnect from {ip}:{port} '.format(ip=ip_addr, port=port))
#         p.shutdown(socket.SHUT_RDWR)
#         p.close()
#     # exit()
#     rospy.signal_shutdown("manual shutdown")



# def fun1(message):
#     # global cell_number
#     buff[map_table[cell_number][0]] = message.v_right
#     buff[map_table[cell_number][1]] = message.v_left
#     buff[map_table[cell_number][2]] = message.v_back
#     print(buff)  #TODO:test
#     # struct.pack('>h', buff[0])
#     # json_string = json.dumps(buff)
#     # p.sendto(json_string.encode('utf-8'), address)
#     #>:小端模式， h： int
#     # p.send(struct.pack('<h', 666)) #起始字符
#     p.send(struct.pack('<h', 666)) #起始字符    
#     for i in range(len(buff)):
#         p.send(struct.pack('<h', buff[i]*0.1))#这里乘以0.1来控制数量级到几十
#     p.send(struct.pack('<h', 888)) # 结束字符

#     return 0

# def fun2(message):
#     global cell_number
#     cell_number = message.cell - 1
#     # print(cell_number)s
#     return 0

    
class Wheels:
    def __init__(self, x, y, angle, vel):
        self.x = x
        self.y = y
        self.angle = angle
        self.vel = 0.0

class KeyboardCtrlVelocityFactory:

    def __init__(self, filepath):

        #下面初始化PLC链接
        initVal = 0
        buff = [initVal for i in range(21)]  # 这里需要修改成单元的数量
        cell_number = 0
        self.map_table = list2=[0.0 for x in range(0,192)]
        self.CoveredWheels = []
        self.tlist = [] #用于保存内容
        ip_addr = '192.168.2.201'
        port = 10500
        # ip_addr = '192.168.2.249'
        # port = 5000
        self.connect_flag = 0
        address = (ip_addr, port)

        try:
            self.p = socket.socket(socket.AF_INET,socket.SOCK_STREAM)
            print("正在连接{ip}:{port}".format(ip=ip_addr, port=port))
            self.p.connect((ip_addr,port))
            print("SUCCESS：已经成功连接到控制器！")
            self.connect_flag = 1
        except:
            print("ERROR：无法链接到控制器，请重检查硬件链接！")



        #下面初始化ROS的节点
        rospy.init_node("socket", anonymous=True)
        self.linear = [0.0, 0.0, 0.0]
        self.subscriber = rospy.Subscriber("cmd_vel", Twist, self.callback)
        self.subscriber_1 = rospy.Subscriber("cell_number", wheels_trans, self.callback2)
        signal.signal(signal.SIGINT, self.exit)
        signal.signal(signal.SIGTERM, self.exit)
        self.tlist = []
        self.ReadFiles(filepath)
        self.ThreadStart()
        # print "\nTranspy Process exit\n"


    def exit(signum, frame):
        if self.connect_flag:
            print('Disconnect from {ip}:{port} '.format(ip=ip_addr, port=port))
            p.shutdown(socket.SHUT_RDWR)
            p.close()
        # exit()
        rospy.signal_shutdown("manual shutdown")


    def callback(self, message):
        # 这个函数用来接收键盘的输入
        self.linear[0] = message.linear.x
        self.linear[1] = message.linear.y
        self.linear[2] = message.linear.z

        self.angular[0] = message.angular.x
        self.angular[1] = message.angular.y
        self.angular[2] = message.angular.z

    def callback2(self, message):
        # 这个是接收视觉检测topic
        self.CoveredWheels = message.wID
        self.centerx = message.wcenterx
        self.centery = message.wcentery

    def length_cal(self, point1, point2):
        # 计算距离的函数
        return math.sqrt((point1[0] - point2[0]) ** 2 + (point1[1] - point2[1]) ** 2)

    def velocity_cal(self, wheels_enable, tlist, j):
        # 计算每个covered到轮子中心到物体中心的距离
        for i in wheels_enable:
            tlist[i].distance = length_cal([tlist[i].x, tlist[i].y], [resx[j], resy[j]])

    def ReadFiles(self, filepath):
        # 这个函数是想在读出我们的wheels_num.txt的文件中的内容,通过视觉检测出来的的编号对应
        # 文件中的轮子的信息,计算文件的内容,
        with open(filepath) as f:
            for line in f:
                sp = line.split('\t')
                # wheelsnumbers = int(sp[0])
                # wheelsposx = float(sp[1])
                # wheelsposy = float(sp[2])
                whe = Wheels(int(sp[0]), float(sp[1]), float(sp[2]), float(sp[3]))
                self.tlist.append(whe)

    def Getlist(self):
        return self.tlist


    def VelFact(self, vx, vy, omega):
        # 分解模型
        for i in wheels_enable:
            if i < 64:
                tlist[i].vel = -vx + tlist[i].distance * omega
            elif i < 128:
                tlist[i].vel = vx * math.cos(math.pi - math.pi*2/3) - vy * math.cos(math.pi*2/3 - math.pi/2) + tlist[i].distance * omega
            elif i < 192:
                tlist[i].vel = vx * math.cos(math.pi/3) + vy * math.sin(math.pi/3) + tlist[i].distance * omega
        self.SendMsg()

    def ThreadingJob(self):
        rospy.spin()

    def SendMsg(self):
        # global cell_number

        # 下面是发送的格式报文开始666,结束888
        p.send(struct.pack('<h', 666)) #起始字符    
        for i in range(len(self.tlist)):
            p.send(struct.pack('<h', self.tlist[i]*0.1))#这里乘以0.1来控制数量级到几十
        p.send(struct.pack('<h', 888)) # 结束字符
        return 0

    def ThreadStart(self):
        # 这个函数我想让他专门搞多线程,因为我们的这个文件其实他是需要完成三个任务的,
        # 线程1: 接收键盘的控制信号,这个不需要要连续的接收,但是需要一直等在那个地方,
        # 线程2: 接收视觉的检测结果,视觉的检测结果是实时的一个检测,每次接收到视觉检测的数据之后处理完
        # 还在同一个线程中把这个数据发出去   
        add_thread = threading.Thread(target = self.ThreadingJob)
        add_thread.start()


if __name__ == '__main__':
    filepath = r"/home/chenxin/workspace/omniwheeltest/omniwheel_control/src/wheels_num.txt"
    function = KeyboardCtrlVelocityFactory(filepath)
