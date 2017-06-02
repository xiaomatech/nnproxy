export HADOOP_HOME="/opt/hadoop"
export NNPROXY_ZK_QUORUM="127.0.0.1:2181"
export NNPROXY_MOUNT_TABLE_ZKPATH="/hadoop/nnproxy/mounts"

export NNPROXY_OPTS="-Ddfs.nnproxy.mount-table.zk.quorum=$NNPROXY_ZK_QUORUM -Ddfs.nnproxy.mount-table.zk.path=$NNPROXY_MOUNT_TABLE_ZKPATH"
