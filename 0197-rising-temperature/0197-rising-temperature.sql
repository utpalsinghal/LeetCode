/* Write your T-SQL query statement below */
--/*
select distinct b.id
from Weather a, Weather b
where DATEDIFF(day,a.recorddate, b.recorddate) = 1 and a.temperature < b.temperature --and a.id+1= b.id
--*/
--select * from weather a, weather b