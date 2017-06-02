NNPROXY_HOME=`dirname $0`
. $NNPROXY_HOME/nnproxy-env.sh
# Deploy mount table, example above mounts / to hdfs://toutiaonn0 and /data 
# to hdfs://toutiaonn1. In which case, accessing /data/recommend would be 
# transparently redirected to hdfs://toutiaonn1/data/recommend.
# In this example, toutiaonn0 and toutiaonn1 are fs names configured with 
# auto failover HA. Using ip:port directly (non-HA setup) are also fesible.
cat $NNPROXY_HOME/../conf/mounts | $NNPROXY_HOME/nnproxy load $NNPROXY_OPTS

# Run proxy (remember these args)
$NNPROXY_HOME/nnproxy proxy $NNPROXY_OPTS
