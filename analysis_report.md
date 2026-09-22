# Informe de Auditoría de Base de Datos — EduTrack Q3

## Inscripciones en 'Intro to Python'
Resultado: [Escribe la cantidad total de inscritos, ej. 8]

Estudiantes inscriptos:
-| student_name | email                             | completion_percentage |
| ------------ | --------------------------------- | --------------------- |
| Emily Watson | emily.watson@student.edutrack.com | 85                    |
| Klaus Weber  | klaus.weber@student.edutrack.com  | 92                    |
| Marco Rossi  | marco.rossi@student.edutrack.com  | 88                    |
| James Miller | james.miller@test.com             | 30                    |
| Priya Sharma | priya.sharma@student.edutrack.com | 55                    |

---

## Posibles abandonos (progreso < 10%)
Resultado: 4

## Inscripciones sin instructor
Resultado: 2

---

## Top 5 estudiantes con mayor avance sin aprobar
Resultado:
| student_name  | completion_percentage |
| ------------- | --------------------- |
| Emily Watson  | 60                    |
| Priya Sharma  | 55                    |
| Yuki Nakamura | 45                    |
| Emily Watson  | 40                    |
| James Miller  | 30                    |

---

## Inscripciones creadas en el último año
Resultado: 0

---

## Registro de la inscripción faltante
Resultado: Se insertó correctamente la inscripción confirmada para la estudiante Sophia Martinez (sophia.martinez@example.com) en el curso 'Data Analysis with SQL' (ID de curso: 3) con fecha actual, porcentaje de completado en 0%, estado no aprobado y cobro de $49.99 con instructor por defecto 'Pending assignment'.

---

## Asignación de instructor por defecto
Resultado: Se actualizaron los registros vacíos asignando el valor 'Pending assignment' a todos los instructores en estado NULL. Todos los registros cuentan con instructor asignado.

---

## Eliminación de cuentas de prueba (@test.com)
Resultado: 2 inscripciones asociadas a correos de prueba (@test.com) fueron eliminadas exitosamente de la tabla enrollments.

---

## Inscripciones por categoría
Resultado:
| category    | total_enrollments |
| ----------- | ----------------- |
| Programming | 6                 |
| Data        | 5                 |
| Design      | 4                 |
| Marketing   | 2                 |
---

## Promedio de completado por curso
Resultado:
| course_title           | avg_completion |
| ---------------------- | -------------- |
| UI/UX Fundamentals     | 0.00           |
| Data Analysis with SQL | 28.60          |
| Web Design Basics      | 32.50          |
| Digital Marketing 101  | 36.50          |
| Advanced Python        | 67.50          |
| Intro to Python        | 80.00          |

---

## Cursos con más de 3 inscripciones
Resultado:
| course_title           | total_enrollments |
| ---------------------- | ----------------- |
| Data Analysis with SQL | 5                 |
| Intro to Python        | 4                 |

---

## Ingresos totales por categoría
Resultado:
| category    | total_revenue |
| ----------- | ------------- |
| Programming | 339.94        |
| Data        | 279.95        |
| Design      | 169.96        |
| Marketing   | 59.98         |