CREATE DATABASE packt_school;
USE packt_school;

CREATE TABLE teacher(
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100),
  email VARCHAR(100),
  date_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE student(
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100),
  email VARCHAR(100),
  date_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE subject(
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50),
  description TEXT,
  date_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE exam (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100),
  start_date DATETIME,
  end_date DATETIME
);

CREATE TABLE subject_teacher(
  teacher_id INT,
  subject_id INT,
  FOREIGN KEY (teacher_id) REFERENCES teacher (id),
  FOREIGN KEY (subject_id) REFERENCES subject (id)
);

CREATE TABLE teacher_student(
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

CREATE TABLE exam_subject(
  id INT PRIMARY KEY AUTO_INCREMENT,
  exam_id INT,
  subject_id INT,
  exam_date DATETIME,
  FOREIGN KEY (exam_id) REFERENCES exam (id),
  FOREIGN KEY (subject_id) REFERENCES subject (id)
);

CREATE TABLE exam_score (
  student_id INT,
  exam_subject_id INT,
  score INT,
  comments TEXT,
  passed BOOLEAN,
  FOREIGN KEY (student_id) REFERENCES student (id),
  FOREIGN KEY (exam_subject_id) REFERENCES exam_subject (id)
);
