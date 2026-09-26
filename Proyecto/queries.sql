Listar todas las inscripciones

SELECT 
    s.name AS student_name,
    c.title AS course_title,
    e.completion_percentage
FROM enrollments e
INNER JOIN students s ON e.student_id = s.id
INNER JOIN courses c ON e.course_id = c.id;

Estudiantes que han aprobado al menos un curso

SELECT DISTINCT
    s.name AS student_name,
    s.email,
    c.title AS course_title
FROM enrollments e
INNER JOIN students s ON e.student_id = s.id
INNER JOIN courses c ON e.course_id = c.id
WHERE e.passed = true;

Porcentaje de completado medio por instructor
SELECT 
    c.instructor_name,
    ROUND(AVG(e.completion_percentage), 2) AS avg_completion
FROM enrollments e
INNER JOIN courses c ON e.course_id = c.id
GROUP BY c.instructor_name
ORDER BY avg_completion DESC;

Estudiantes sin ninguna inscripción

SELECT 
    s.id,
    s.name AS student_name,
    s.email
FROM students s
LEFT JOIN enrollments e ON s.id = e.student_id
WHERE e.id IS NULL;

Cursos sin ninguna inscripción

SELECT 
    c.id,
    c.title,
    c.category
FROM courses c
LEFT JOIN enrollments e ON c.id = e.course_id
WHERE e.id IS NULL;

Estudiantes inscritos en más de un curso

SELECT 
    s.name AS student_name,
    COUNT(e.course_id) AS total_courses
FROM enrollments e
INNER JOIN students s ON e.student_id = s.id
GROUP BY s.id, s.name
HAVING COUNT(e.course_id) > 1;

Ingresos totales por categoría

SELECT 
    c.category,
    SUM(c.monthly_fee) AS total_revenue
FROM enrollments e
INNER JOIN courses c ON e.course_id = c.id
GROUP BY c.category
ORDER BY total_revenue DESC;

Estudiantes inscritos por instructor
SELECT 
    c.instructor_name,
    COUNT(e.student_id) AS total_students
FROM enrollments e
INNER JOIN courses c ON e.course_id = c.id
GROUP BY c.instructor_name
ORDER BY total_students DESC;

Inscripciones con estudiante inexistente
SELECT 
    e.id AS enrollment_id,
    e.student_id
FROM enrollments e
LEFT JOIN students s ON e.student_id = s.id
WHERE s.id IS NULL;

Inscripciones con curso inexistente

SELECT 
    e.id AS enrollment_id,
    e.course_id
FROM enrollments e
LEFT JOIN courses c ON e.course_id = c.id
WHERE c.id IS NULL;