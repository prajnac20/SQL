select * from enrollment_details e,course_details c where c.course_id = e.course_id group by c.course_id;
select * from enrollment_details e,course_details c where c.course_id = e.course_id order by c.course_id;
select c.course_name,c.course_domain from enrollment_details e,course_details c where c.course_id = e.course_id group by c.course_id having count(e.course_id) > 1;