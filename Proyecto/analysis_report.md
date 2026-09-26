1- Listar todas las inscripciones
| student_name    | course_title           | completion_percentage |
| --------------- | ---------------------- | --------------------- |
| Emily Watson    | Intro to Python        | 85                    |
| Emily Watson    | Web Design Basics      | 60                    |
| Klaus Weber     | Intro to Python        | 92                    |
| Klaus Weber     | Data Analysis with SQL | 78                    |
| Lucia Fernandes | Web Design Basics      | 5                     |
| Lucia Fernandes | Digital Marketing 101  | 3                     |
| Marco Rossi     | Advanced Python        | 95                    |
| Marco Rossi     | Intro to Python        | 88                    |
| Yuki Nakamura   | Data Analysis with SQL | 45                    |
| Yuki Nakamura   | UI/UX Fundamentals     | 0                     |
| Pierre Dubois   | UI/UX Fundamentals     | 0                     |
| Priya Sharma    | Digital Marketing 101  | 70                    |
| Priya Sharma    | Intro to Python        | 55                    |
| Pierre Dubois   | Data Analysis with SQL | 20                    |
| Emily Watson    | Advanced Python        | 40                    |
| Lucia Fernandes | Advanced Python        | 0                     |

2. Estudiantes que han aprobado al menos un curso
| student_name | email                             | course_title           |
| ------------ | --------------------------------- | ---------------------- |
| Marco Rossi  | marco.rossi@student.edutrack.com  | Advanced Python        |
| Emily Watson | emily.watson@student.edutrack.com | Intro to Python        |
| Klaus Weber  | klaus.weber@student.edutrack.com  | Intro to Python        |
| Marco Rossi  | marco.rossi@student.edutrack.com  | Intro to Python        |
| Priya Sharma | priya.sharma@student.edutrack.com | Digital Marketing 101  |
| Klaus Weber  | klaus.weber@student.edutrack.com  | Data Analysis with SQL |

3. Porcentaje de completado medio por instructor
| instructor_name    | avg_completion |
| ------------------ | -------------- |
| Marta López        | 66.14          |
| Carlos Vega        | 40.00          |
| Lucia Prades       | 36.50          |
| Pending assignment | 0.00           |


4.Estudiantes sin ninguna inscripción
| id | student_name  | email                              |
| -- | ------------- | ---------------------------------- |
| 8  | Giulia Romano | giulia.romano@student.edutrack.com |

5.Cursos sin ninguna inscripción
| id | title           | category  |
| -- | --------------- | --------- |
| 7  | Email Campaigns | Marketing |

6.Estudiantes inscritos en más de un curso
| student_name    | total_courses |
| --------------- | ------------- |
| Lucia Fernandes | 3             |
| Yuki Nakamura   | 2             |
| Marco Rossi     | 2             |
| Pierre Dubois   | 2             |
| Klaus Weber     | 2             |
| Priya Sharma    | 2             |
| Emily Watson    | 3             |

7.Ingresos totales por categoría
| category    | total_revenue |
| ----------- | ------------- |
| Programming | 409.93        |
| Data        | 179.97        |
| Design      | 169.96        |
| Marketing   | 59.98         |

8.Estudiantes inscritos por instructor
| instructor_name    | total_students |
| ------------------ | -------------- |
| Marta López        | 7              |
| Carlos Vega        | 5              |
| Pending assignment | 2              |
| Lucia Prades       | 2              |

9.Inscripciones con estudiante inexistente
No existen registros huérfanos. Todas las inscripciones de la tabla enrollments corresponden a estudiantes válidos en la tabla students (0 resultados encontrados).

10.Inscripciones con curso inexistente
No existen datos inconsistentes. Todas las inscripciones de la tabla enrollments corresponden a cursos existentes en la tabla courses (0 resultados encontrados).