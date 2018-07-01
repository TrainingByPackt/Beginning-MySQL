USE packt_school;

-- Step (2)

SELECT id, name, email, CONCAT("'", name, "'<", email, ">") as email_formatted
FROM student;