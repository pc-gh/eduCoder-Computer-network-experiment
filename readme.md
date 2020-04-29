### educoder实验平台计算机网络实验小秘籍

#### 以平台静态路由配置实验为例

据本人目前的了解，eduCoder平台计算机网络实验的静态路由配置实验测评原理是运行`/data/workspace/myshixun`目录下面的`test1-x.sh`脚本文件，根据期望输出结果和实际`test1-x.sh`脚本文件输出结果进行对比来决定你是否通过了此关。当我们知道了这一点，我们不是可以秒通关了。没错！当我知道这个消息的时候心情是异常激动的，于是乎我拿起室友的账号做起了“实验”。下面是我的思路：

首先先拿自己的账号完成三关，主要还是按照过关任务描述来吧。关于这三关有几个值得注意的地方：

1、`export config`设备配置信息到`/data/workspace/myshixun/second`目录下。

2、千万记得`save`保存PC的配置，路由也要write。

3、第三关静态路由配置实验特别提出批评：当你R1、R2、R3三个路由器静态路由设置完成之后开心点击测评你会发现，结果一直是要我们去查看R1、R2、R3配置信息是否已经成功导出到项目目录下，我顿时就？？？最后发现怎么做输出结果就是建议查看R1、R2、R3配置信息是否已经成功导出到项目目录下。。。好吧，改脚本文件，没错，改`test1-3.sh`配置文件。

![image-20200430003924070](https://github.com/pc-gh/eduCoder-Computer-network-experiment/blob/master/staticRoutingConfiguration/images/image-20200430003924070.png)

完成三关之后，我想，室友账号环境下的机器是不是和我的是在同一网段下呢？登录一查看，果然，额，当时忘记截图了！自己就操作了一波内网传输文件把自己`/data/workspace/myshixun/`目录下的`test1-1.sh`、`test1-2.sh`、`test1-3.sh`还有`/data/workspace/myshixun/second`下的`PC1_startup.vpc`、`PC2_startup.vpc`、`R1_i1_startup-config.cfg`、`R2_i2_startup-config.cfg`、`R3_i3_startup-config.cfg`传到室友虚拟机对于目录下。然后就”迅速“过了第二关和第三关（第一关室友提前过了），还截了图：

![image-20200430005129777](https://github.com/pc-gh/eduCoder-Computer-network-experiment/blob/master/staticRoutingConfiguration/images/image-20200430005129777.png)

那么摸清楚了这个实验的套路之后应该怎么让大家一块“快”起来呢？首先想到的是用sh脚本去`wget`我虚拟机的文件，然后惊讶的压线好像虚拟机的ip会变！好吧，不是环境自带了git吗？ok。

第一步：自建一个git远程仓库！这里给出仓库地址:

`https://github.com/pc-gh/eduCoder-Computer-network-experiment.git`。

第二步：把相关文件上传到仓库中。

第三步：编写简单的bash脚本文件让其他同学在clone仓库到虚拟机后运行一个脚本就可以把文件mv到正确目录。

第四步：验证使用！

#### 通关秘籍使用步骤：

1、打开虚拟机环境，进入`/data/workspace/myshixun`下，执行指令

```git
git clone https://github.com/pc-gh/eduCoder-Computer-network-experiment.git
```

2、进入目录下的eduCoder-Computer-network-experiment文件夹运行脚本runStaticRoutingConfiguration.sh

```sh
bash runStaticRoutingConfiguration.sh
```

3、点击右下角测评等待奇迹出现啦！

#### 目录解析：

静态路由实验目录：eduCoder-Computer-network-experiment、staticRoutingConfiguration

静态路由实验运行脚本：runStaticRoutingConfiguration.sh

其他实验脚本有待开发。。。

