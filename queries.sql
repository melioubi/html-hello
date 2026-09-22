--Consulta 1 (Intro to Python):--
SELECT s.name AS student_name, s.email, e.completion_percentage
FROM enrollments e
JOIN students s ON e.student_id = s.id
JOIN courses c ON e.course_id = c.id
WHERE c.title = 'Intro to Python';

--Consulta 2 (Posibles abandonos < 10%):--
SELECT COUNT(*) FROM enrollments WHERE completion_percentage < 10;

--Consulta 3 (Instructor NULL):--
SELECT COUNT(*) FROM enrollments WHERE instructor IS NULL;

--Consulta 4 (Top 5 sin aprobar):--
SELECT s.name AS student_name, e.completion_percentage
FROM enrollments e
JOIN students s ON e.student_id = s.id
WHERE e.passed = false
ORDER BY e.completion_percentage DESC
LIMIT 5;

--Consulta 5 (Inscripciones del último año):
SELECT COUNT(*) FROM enrollments WHERE enrollment_date >= CURRENT_DATE - INTERVAL '1 year';

--Consulta 6 (INSERT registro faltante):--
SELECT setval(pg_get_serial_sequence('enrollments', 'id'), COALESCE(MAX(id), 1)) FROM enrollments;

INSERT INTO enrollments (
    student_id,
    student_name,
    student_email,
    course_id,
    course_title,
    category,
    enrollment_date,
    completion_percentage,
    passed,
    instructor,
    monthly_fee_paid
)
VALUES (
    15,
    'Sophia Martinez',
    'sophia.martinez@example.com',
    3,
    'Data Analysis with SQL',
    'Data',
    CURRENT_DATE,
    0,
    false,
    'Pending assignment',
    49.99
);

SELECT * FROM enrollments WHERE student_name = 'Sophia Martinez';

--Consulta 7 (UPDATE instructores vacíos):--
UPDATE enrollments
SET instructor = 'Pending assignment'
WHERE instructor IS NULL;

--Consulta 8 (DELETE cuentas @test.com):--
DELETE FROM enrollments
WHERE student_id IN (
    SELECT id FROM students WHERE email LIKE '%@test.com'
)
OR student_email LIKE '%@test.com';

--Consulta 9 (Inscripciones por categoría):--
SELECT c.category, COUNT(e.id) AS total_enrollments
FROM enrollments e
JOIN courses c ON e.course_id = c.id
GROUP BY c.category
ORDER BY total_enrollments DESC;

--Consulta 10 (Promedio completado por curso):--
SELECT c.title AS course_title, ROUND(AVG(e.completion_percentage), 2) AS avg_completion
FROM enrollments e
JOIN courses c ON e.course_id = c.id
GROUP BY c.title
ORDER BY avg_completion ASC;

--Consulta 11 (Cursos con más de 3 inscripciones):--
SELECT c.title AS course_title, COUNT(e.id) AS total_enrollments
FROM enrollments e
JOIN courses c ON e.course_id = c.id
GROUP BY c.title
HAVING COUNT(e.id) > 3;

--Consulta 12 (Ingresos totales por categoría):--
SELECT c.category, SUM(e.monthly_fee_paid) AS total_revenue
FROM enrollments e
JOIN courses c ON e.course_id = c.id
GROUP BY c.category
ORDER BY total_revenue DESC;