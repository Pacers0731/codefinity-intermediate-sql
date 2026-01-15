SELECT student_surname, AVG(grade) AS average_grade
FROM student_grades
WHERE subject_name = 'Mathematics'
GROUP BY student_surname
HAVING MAX(grade) >= 90
ORDER BY average_grade DESC
LIMIT 10;