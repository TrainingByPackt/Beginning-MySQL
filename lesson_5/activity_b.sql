USE packt_school;

-- step (1)

SELECT s.name, es.score
FROM exam_score es
JOIN student s ON es.student_id = s.id
WHERE es.score = (
  SELECT MAX(score) FROM exam_score
) OR es.score = (
  SELECT MIN(score) FROM exam_score
);

-- step (3)

SELECT
  s.name as subject,
  AVG(esc.score) as average_score
FROM subject s
JOIN exam_subject es ON s.id = es.subject_id
JOIN exam_score esc ON esc.exam_subject_id = es.id
GROUP BY s.id;

-- step (5)

SELECT
  s.name as subject,
  AVG(esc.score) as average_score
FROM subject s
JOIN exam_subject es ON s.id = es.subject_id
JOIN exam_score esc ON esc.exam_subject_id = es.id
GROUP BY s.id
HAVING average_score < 60;
