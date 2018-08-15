USE packt_school;

-- step (1)

SELECT s.name, es.score
FROM student s
INNER JOIN exam_score es ON s.id = es.student_id
  SELECT es.score
  FROM exam_score es
  INNER JOIN student s ON es.student_id = s.id
  WHERE s.name = 'Brian Baraka'
);
