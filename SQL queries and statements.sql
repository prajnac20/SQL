CREATE TABLE `course`.`new_table` (`course_id`  INT NOT NULL,`course_name` VARCHAR(45) NOT NULL, `course_domain`  VARCHAR(45) NOT NULL, PRIMARY KEY(`course_id`));
ALTER TABLE `course`.`new_table`  RENAME TO  `course`.`course_details` ;

CREATE TABLE `course`.`enrollment_details` 
(
 `roll_no` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
 `contact` VARCHAR(10) NOT NULL,
  `email_id` VARCHAR(15) NOT NULL,
 `course_id` INT NOT NULL,
  PRIMARY KEY (`roll_no`),
	CONSTRAINT `course_id`
    FOREIGN KEY (`course_id`)
 REFERENCES `course`.`course_details` (`course_id`)
 ON DELETE CASCADE
    ON UPDATE CASCADE);


INSERT INTO `course`.`course_details` (`course_id`, `course_name`, `course_domain`) VALUES ('1', 'Naive Bayes Algorithm', 'Machine Learning');

select e.e_name,e.email_id,c.course_name,c.course_domain from enrollment_details e,course_details c where c.course_id = e.course_id;

update `course`.`course_details` set course_id = 5 where course_id = 3;
