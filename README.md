# tarsim

![alt text](https://raw.githubusercontent.com/kamranshamaei/tarsim/development/doc/pics/fanuc.png)
![alt text](https://raw.githubusercontent.com/kamranshamaei/tarsim/development/doc/pics/kuka.png)
![alt text](https://raw.githubusercontent.com/kamranshamaei/tarsim/development/doc/pics/scara.png)

运行步骤：
1. 将thirdparty里包括vtk 、 googleProtoBuf/3.5.1/protobuf-master 、 eigen拷贝到Tarsim/src目录下（setup.sh同级）
2. 安装qtbase5-dev   qtdeclarative5-dev,提示却什么安装什么，最后如果卡在如下情形：
    zlib1g-dev : 依赖: zlib1g (= 1:1.2.8.dfsg-2ubuntu4) 但是 1:1.2.8.dfsg-2ubuntu4.1 已安装。
    则可以 sudo apt-get install aptitude，然后使用sudo aptitude install 安装之前缺少的这些包zlib1g-dev libprotobuf-dev libmircommon-dev       libmirclient-dev libgles2-mesa-dev libgles2-mesa libegl1-mesa-dev
3. 输入sudo gedit /etc/profile 检查路径：
    export PATH=/opt/Qt5.13.1/5.13.1/Tools/QtCreator/bin:$PATH
    export PATH=$QTDIR/gcc_64/bin:$PATH      //可以使用env命令查看环境变量QTDIR的路径是否是真实的QT安装路径（最好进入目录确认下），如果不对，在profile里添加类似这样的：export QTDIR=/opt/Qt5.13.1/5.13.1    保存后重启系统生效
4. （步骤待验证是否多余）进入1中拷贝过去的vtk中，进到src目录，新建Build文件夹并进入（在命令行使用cd命令进）输入cmake -DCMAKE_PREFIX_PATH=/opt/Qt5.13.1/5.13.1
5. 找到1中的setup.sh，加执行权限，执行。
