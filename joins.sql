select * from enrollment_details e inner join course_details c on c.course_id = e.course_id;
select * from enrollment_details e left join course_details c on c.course_id = e.course_id;
select * from enrollment_details e right join course_details c on c.course_id = e.course_id;

