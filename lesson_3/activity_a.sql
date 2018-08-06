USE packt_school;

-- Step (2)

SELECT name, CONCAT("'", name, "'<", email, ">") as email_formatted
FROM student;
