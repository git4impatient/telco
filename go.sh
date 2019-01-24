./cdr.py > cdr.dat
 hadoop fs -mkdir cdranomaly
 hadoop fs -rm cdranomaly/cdr.dat 
 hadoop fs -put cdr.dat cdranomaly
 export DATANODE=$(sudo su - hdfs -c "hdfs dfsadmin -report | grep Hostname | sed 's/.*: //'  | tail -1")
echo $DATANODE
 impala-shell -i $DATANODE -f cdranomaly.ddl 
