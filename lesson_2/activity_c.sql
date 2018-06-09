-- Step (1)

INSERT INTO exam (name, start_date, end_date)
VALUES ('End of Term I - 2018 Exams', '2018-09-20', '2018-09-28');

-- Step (4)

INSERT INTO exam_subject (exam_id, subject_id, exam_date)
VALUES
  (1, 1, '2018-09-20'),
  (1, 2, '2018-09-24'),
  (1, 3, '2018-09-23'),
  (1, 4, '2018-09-24'),
  (1, 5, '2018-09-27'),
  (1, 6, '2018-09-28');
