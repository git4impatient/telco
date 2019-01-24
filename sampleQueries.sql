 select count(*) from cdranomaly_p;
select avg(duration ) from cdranomaly_p;
select stddev(duration) from cdranomaly_p;

select count(*) -- billidnum  
from cdranomaly_p where 
duration > 
(select  avg(duration ) + 2* stddev(duration) from cdranomaly_p)
;
select duration, mytimestamp from cdranomaly_p order by mytimestamp asc limit 1000;
;
select sourcenm, count(*) droppedcalls from cdranomaly_p where terminationcode = 7
group by sourcenm
order by droppedcalls desc;

select sourcenm, avg(duration) avgtime , count(*) numcalls from cdranomaly_p 
where terminationcode = 7
group by sourcenm
order by avgtime desc;
