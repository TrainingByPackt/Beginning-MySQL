USE packt_school;

-- step (1)

SELECT
  s.name as student_name,
  sj.name as subject,
  esc.score as exam_score
FROM student s
INNER JOIN exam_score esc ON esc.student_id = s.id
INNER JOIN exam_subject es ON es.id = esc.exam_subject_id
INNER JOIN subject sj ON sj.id = es.subject_id
WHERE esc.score >= 60;

-- step (3)

SELECT s.name as subject_name, COUNT(st.teacher_id) as teachers
FROM subject s
LEFT JOIN subject_teacher st ON s.id = st.subject_id
GROUP BY s.id
HAVING teachers = 0 OR teachers = 1;
