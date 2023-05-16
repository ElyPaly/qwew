CREATE TABLE `teachers` (
  `id` INT NOT NULL auto_increment,
  `name` VARCHAR(50) NOT NULL,
  `email` VARCHAR(50) NOT NULL,
  FOREIGN KEY (`name`) REFERENCES `schedule`(`id`)
);

CREATE TABLE `students` (
  `id` INT NOT NULL auto_increment,
  `login` INT NOT NULL,
  `pass` DATE NOT NULL,
  FOREIGN KEY (`id`) REFERENCES `profile`(`name`),
  FOREIGN KEY (`id`) REFERENCES `schedule`(`subject_id`)
);

CREATE TABLE `profile` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `city` DECIMAL(10,2) NOT NULL,
  `student_id` int not null
  PRIMARY KEY (`id`)
);

CREATE TABLE `schedule` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `subject_id` INT NOT NULL,
  `student_id` INT NOT NULL,
  `teacher_id` INT NOT NULL
);


CREATE TABLE `subjects` (
  `id` INT NOT NULL,
  `subjects` INT NOT NULL,
  FOREIGN KEY (`id`) REFERENCES `teachers`(`id`),
  FOREIGN KEY (`subject`) REFERENCES `schedule`(`id`)
); 