-- ONLY copy and past this if you did not go through
-- Lesson 1 and activities A and B in Lesson 2.

CREATE DATABASE packt_school;
USE packt_school;

-- Create the tables

CREATE TABLE IF NOT EXISTS teacher(
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100),
  email VARCHAR(100),
  date_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS student(
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100),
  email VARCHAR(100),
  date_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS subject(
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50),
  description TEXT,
  date_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS exam (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100),
  start_date DATETIME,
  end_date DATETIME
);

CREATE TABLE IF NOT EXISTS subject_teacher(
  teacher_id INT,
  subject_id INT,
  FOREIGN KEY (teacher_id) REFERENCES teacher (id),
  FOREIGN KEY (subject_id) REFERENCES subject (id)
);

CREATE TABLE IF NOT EXISTS teacher_student(
  teacher_id INT,
  student_id INT,
  subject_id INT,
  start_date DATETIME,
  end_date DATETIME,
  date_created TIMESTAMP,
  FOREIGN KEY (teacher_id) REFERENCES teacher (id),
  FOREIGN KEY (student_id) REFERENCES student (id),
  FOREIGN KEY (subject_id) REFERENCES subject (id)
);

CREATE TABLE IF NOT EXISTS exam_subject(
  id INT PRIMARY KEY AUTO_INCREMENT,
  exam_id INT,
  subject_id INT,
  exam_date DATETIME,
  FOREIGN KEY (exam_id) REFERENCES exam (id),
  FOREIGN KEY (subject_id) REFERENCES subject (id)
);

CREATE TABLE IF NOT EXISTS exam_score (
  student_id INT,
  exam_subject_id INT,
  score INT,
  comments TEXT,
  passed BOOLEAN,
  FOREIGN KEY (student_id) REFERENCES student (id),
  FOREIGN KEY (exam_subject_id) REFERENCES exam_subject (id)
);

-- populate the tables

INSERT INTO `teacher` VALUES (1,'Mercy Masika','mmasika@packt.edu','2018-04-23 00:52:37'),(2,'Jeff Mabuto','jmabuto@packt.edu','2018-04-23 00:52:37'),(3,'Rick Beato','rbeato@packt.edu','2018-04-23 00:52:37'),(4,'Sam Munyaga','smunyaga@packt.edu','2018-04-23 00:52:37'),(5,'Aaron Rimbui','rrimbui@packt.edu','2018-04-23 00:52:37'),(6,'Scott Divine','sdivine@packt.edu','2018-04-23 00:52:37'),(7,'Kirk Whalum','kwhalum@packt.edu','2018-04-23 00:52:37'),(8,'Amani Baya','abaya@packt.edu','2018-04-23 00:52:37');

INSERT INTO `student` VALUES (1,'John Mwaniki','john.mwaniki@packt.edu','2018-04-18 18:18:28'),(3,'Jackie Moraa','jackie.moraa@packt.edu','2018-04-18 18:46:56'),(4,'Monicah Mumbi','mumbi@packt.edu','2018-04-23 00:46:42'),(5,'Brian Baraka','bbaraka@packt.edu','2018-04-23 00:46:42'),(6,'Ben Barasa','bbarasa@packt.edu','2018-04-23 00:46:42'),(7,'Betty Bahati','bbahati@packt.edu','2018-04-23 00:46:42'),(8,'Mark Darasa','mdarasa@packt.edu','2018-04-23 00:46:42'),(9,'Mercy Matili','mmatili@packt.edu','2018-04-23 00:46:42');

INSERT INTO `subject` VALUES (1,'Vocals',NULL,'2018-04-23 01:04:22'),(2,'Acoustic Guitar',NULL,'2018-04-23 01:04:22'),(3,'Piano',NULL,'2018-04-23 01:04:22'),(4,'Bass Guitar',NULL,'2018-04-23 01:04:22'),(5,'Saxophone',NULL,'2018-04-23 01:04:22'),(6,'Drums',NULL,'2018-04-23 01:04:22');

INSERT INTO `teacher_student` VALUES (2,4,2,'2018-05-01 00:00:00','2018-08-30 00:00:00','2018-04-24 05:20:38'),(3,5,3,'2018-05-15 00:00:00','2018-08-30 00:00:00','2018-04-24 05:20:38'),(5,6,3,'2018-05-10 00:00:00','2018-08-30 00:00:00','2018-04-24 05:20:38'),(6,7,4,'2018-05-01 00:00:00','2018-09-05 00:00:00','2018-04-24 05:20:38'),(8,8,6,'2018-05-05 00:00:00','2018-09-05 00:00:00','2018-04-24 05:20:38'),(6,9,4,'2018-05-01 00:00:00','2018-08-30 00:00:00','2018-04-24 05:20:38');

INSERT INTO `subject_teacher` VALUES (1,1),(2,2),(3,3),(4,4),(5,3),(6,4),(7,5),(8,6);

INSERT INTO `exam` VALUES (1,'End of Term I - 2018 Exams','2018-09-20 00:00:00','2018-09-28 00:00:00');

INSERT INTO `exam_subject` VALUES (1,1,1,'2018-09-20 00:00:00'),(2,1,2,'2018-09-24 00:00:00'),(3,1,3,'2018-09-23 00:00:00'),(4,1,4,'2018-09-24 00:00:00'),(5,1,5,'2018-09-27 00:00:00'),(6,1,6,'2018-09-28 00:00:00');

INSERT INTO `exam_score` VALUES (4,2,85,NULL,1),(5,3,60,NULL,0),(6,3,75,NULL,1),(7,4,77,NULL,1),(8,6,43,NULL,0),(9,4,55,NULL,0);
