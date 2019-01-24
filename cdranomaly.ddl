drop table if exists cdranomaly;

create external table cdranomaly (
billidnum int,
sourcenm string,
destnm string,
duration int,
mytimestamp int,
terminationcode int
)ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '|' LOCATION
  '/user/centos/cdranomaly'
;
select * from cdranomaly limit 5;

drop table if exists cdranomaly_p;
create table cdranomaly_p stored as parquet as select * from cdranomaly;

select * from cdranomaly_p limit 5;
