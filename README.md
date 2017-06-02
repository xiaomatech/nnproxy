#### 今日头条的hadoop namenode proxy 解决namenode 横扩的问题
```
    原理 https://github.com/bytedance/nnproxy/blob/master/README.md
```
#### 使用
```
    wget https://github.com/xiaomatech/nnproxy/archive/master.zip -O /tmp/nnproxy-master.zip
    cd /opt && unzip /tmp/nnproxy-master.zip && mv /opt/nnproxy-master /opt/nnproxy
    
 修改配置
    vim  /opt/nnproxy/bin/nnproxy-env.sh 
    vim  /opt/nnproxy/conf/mounts
 
 把原来namenode节点中的hadoop-common-2.7.3.jar 替换为 /opt/nnproxy/lib/hadoop-common-2.7.3.jar 的包
 
 启动
    /opt/nnproxy/start.sh
```