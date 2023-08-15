/* Write your T-SQL query statement below */
select s.student_id, s.student_name, sb.subject_name, count(e.subject_name) as attended_exams
from students s
cross join subjects sb
left join examinations e on e.student_id=s.student_id and sb.subject_name=e.subject_name
group by s.student_id, s.student_name, sb.subject_name