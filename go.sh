./cdr.py > cdr.dat
 hadoop fs -mkdir cdranomaly
 hadoop fs -rm cdranomaly/cdr.dat 
 hadoop fs -put cdr.dat cdranomaly
 impala-shell -f cdranomaly.ddl 
