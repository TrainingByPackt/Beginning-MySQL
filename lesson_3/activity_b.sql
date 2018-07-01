USE packt_school;

-- Step (1)

SELECT student_id as id
FROM exam_score
WHERE score >= 60;

-- Step (3)

SELECT id ,name 
FROM student 
WHERE id IN (4, 5, 6, 7);
