# tarsim

![alt text](https://raw.githubusercontent.com/kamranshamaei/tarsim/development/doc/pics/fanuc.png)
![alt text](https://raw.githubusercontent.com/kamranshamaei/tarsim/development/doc/pics/kuka.png)
![alt text](https://raw.githubusercontent.com/kamranshamaei/tarsim/development/doc/pics/scara.png)

运行步骤：
1. ubuntu16.04直接使用对应分支代码linux_ubuntu_16_04。Clone下来只有一个tarsim文件夹。
2. 确认安装了gcc/g++ 和cmake。
3. sudo gedit /etc/profile查看路径配置：
    这里应该有你的Qt安装路径： export QTDIR=/opt/Qt5.13.1/5.13.1
    有gcc的路径： export PATH=$QTDIR/gcc_64/bin:$PATH 
    可能还需要QtCreator的路径： export PATH=/opt/Qt5.13.1/5.13.1/Tools/QtCreator/bin:$PATH
    要有到tarsim目录下lib文件夹的路径： export LD_LIBRARY_PATH=~/Documents/Work/GitDemo/tarsim/lib:$LD_LIBRARY_PATH
    保存后注销或者重启生效。
4. 进入tarsim文件夹执行 setup.sh 开始安装依赖环境。最后会提示找不到类似 Qt5Config.cmake/qt5_config.cmake的文件。
    可能会找不到如下文件：          |      对应要安装的包：（sudo apt-get install xxx）
    qt5Config.cmake             |       qtbase5-dev   qtdeclarative5-dev
    Qt5X11ExtrasConfig.cmake    |       libqt5x11extras-dev
    Qt5UiPluginConfig.cmake     |       qttools5-dev
    以及其他。。。 具体要安装什么包解决报错呢？ 1/ 看报错名字猜包名   2/ google，只看那些让安装一个包就解决的帖子，涉及复杂操作的一律不采用。
    PS：可能安装某个包时缺少依赖环境，提示缺什么就安装什么即可。若最后出现类似下面的报错“ zlib1g-dev : 依赖: zlib1g (= 1:1.2.8.dfsg-2ubuntu4) 但是 1:1.2.8.dfsg-2ubuntu4.1 已安装。”  可以使用aptitude工具解决依赖问题，用apt-get安装即可，aptitude使用方法：sudo aptitude install zlib1g-dev
    需要以此法安装的包可能有libprotobuf-dev libmircommon-dev       libmirclient-dev libgles2-mesa-dev libgles2-mesa libegl1-mesa-dev，若提示需降级某些包，同意安装即可。
5. 终于无报错地执行完setup.sh了，现在运行程序即可，方法（这里以打开kuka例程为例）：发哦tarsim目录下执行 ./tarsim -c ./user/client/samples/kuka_KR6

