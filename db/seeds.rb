# -*- coding: utf-8 -*-
user1 = User.new
user1.email = "admin@seu.com"
user1.password = "admin1234"
user1.add_role 'Admin'
user1.save

user2 = User.new
user2.email = "julian@seu.com"
user2.password = "student1234"
user2.add_role "Student"
user2.save

user3 = User.new
user3.email = "marcelo@seu.com"
user3.password = "dean1234"
user3.add_role "Dean"
user3.save

user4 = User.new
user4.email = "luz@seu.com"
user4.password = "director1234"
user4.add_role "Director"
user4.save

user5 = User.new
user5.email = "jairo@seu.com"
user5.password = "teacher1234"
user5.add_role "Teacher"
user5.save

user6 = User.new
user6.email = "chucho@seu.com"
user6.password = "teacher1234"
user6.add_role "Teacher"
user6.save

user7 = User.new
user7.email = "martinez@seu.com"
user7.password = "teacher1234"
user7.add_role "Teacher"
user7.save

user8 = User.new
user8.email = "tigre@seu.com"
user8.password = "teacher1234"
user8.add_role "Teacher"
user8.save

user9 = User.new
user9.email = "sepulveda@seu.com"
user9.password = "teacher1234"
user9.add_role "Teacher"
user9.save

user10 = User.new
user10.email = "aranzazu@seu.com"
user10.password = "teacher1234"
user10.add_role "Teacher"
user10.save

#Inserciones de prueba en Courses
Course.create!(name: "Matemáticas Especiales", course_id: "GF0831", group: "2", faculty: "Ingeniería", year: "2014", semester: "2", :user_ids => [user2.id, user5.id])
Course.create!(name: "Matemáticas Discretas", course_id: "GF0832", group: "2", faculty: "Ingeniería", year: "2014", semester: "2", :user_ids => [user2.id, user6.id])
Course.create!(name: "Física I", course_id: "GF0827", group: "2", faculty: "Ingeniería", year: "2014", semester: "2", :user_ids => [user2.id, user7.id])
Course.create!(name: "Física II", course_id: "GF0828", group: "2", faculty: "Ingeniería", year: "2014", semester: "2", :user_ids => [user2.id, user8.id])
Course.create!(name: "Física III", course_id: "GF0829", group: "2", faculty: "Ingeniería", year: "2014", semester: "2", :user_ids => [user2.id, user9.id])
Course.create!(name: "Probabilidad", course_id: "GF0830", group: "2", faculty: "Ingeniería", year: "2014", semester: "2", :user_ids => [user2.id, user10.id])

#Tipos de encuesta
st1 = SurveyType.create!(name: "Estudiantes a profesor")
st2 = SurveyType.create!(name: "Decano a profesor")
st3 = SurveyType.create!(name: "Director de programa a profesor")

a1 = Aspect.create!(name: "Conocimiento")
a2 = Aspect.create!(name: "Metodología")
a3 = Aspect.create!(name: "Cumplimiento de Labores")
a4 = Aspect.create!(name: "Relaciones Universitarias")

#Evaluación al profesor por parte de los estudiantes
q1 = Question.create!(item: "Demuestra dominio en el manejo de los temas que trata", aspect_id: a1.id)
q2 = Question.create!(item: "Utiliza los conceptos propios de la asignatura", aspect_id: a1.id)
q3 = Question.create!(item: "Responde con claridad a las preguntas formuladas por los estudiantes", aspect_id: a1.id)
q4 = Question.create!(item: "Relaciona los contenidos del curso con otras áreas del conocimiento", aspect_id: a1.id)
q5 = Question.create!(item: "Mantiene el interés de sus alumnos por los temas de la asignatura", aspect_id: a2.id)
q6 = Question.create!(item: "Destaca las ideas principales de los temas", aspect_id: a2.id)
q7 = Question.create!(item: "Formula preguntas que inducen al estudiante a razonar", aspect_id: a2.id)
q8 = Question.create!(item: "Orienta al estudiante en la búsqueda de respuestas", aspect_id: a2.id)
q9 = Question.create!(item: "Es claro al presentar la información, facilitando el aprendizaje al alumno", aspect_id: a2.id)
q10 = Question.create!(item: "Recomienda referencias bibliográficas acordes con los temas de estudio", aspect_id: a2.id)
q11 = Question.create!(item: "Estimula la participación del estudiante en clase por medio de talleres, grupos de estudio, exposiciones etc", aspect_id: a2.id)
q12 = Question.create!(item: "La exposición de los temas es ordenada y responde a la dinámica del curso", aspect_id: a2.id)
q13 = Question.create!(item: "Utiliza diversos sistemas educativos distintos a las clase magistral", aspect_id: a2.id)
q14 = Question.create!(item: "Fomenta en los estudiantes el uso del vocabulario propio de la asignatura", aspect_id: a2.id)
q15 = Question.create!(item: "Mantiene el control de la clase", aspect_id: a2.id)
q16 = Question.create!(item: "Cumple con el programa propuesto", aspect_id: a2.id)
q17 = Question.create!(item: "Cumple las normas y criterios de evaluación establecidos en el programa y convenios con los estudiantes", aspect_id: a2.id)
q18 = Question.create!(item: "Analiza con los estudiantes los resultados de las evaluaciones", aspect_id: a2.id)
q19 = Question.create!(item: "Motiva a los estudiantes a realizar las prácticas o talleres y presta asesoría oportuna", aspect_id: a2.id)
q20 = Question.create!(item: "Facilita la elaboración de guías apropiadas para el desarrollo del trabajo práctico", aspect_id: a2.id)
q21 = Question.create!(item: "Existe correspondencia entre la información teórica y el trabajo práctico", aspect_id: a2.id)
q22 = Question.create!(item: "Estimula el análisis y la reflexión sobre el trabajo práctico", aspect_id: a2.id)
q23 = Question.create!(item: "Cumple con los compromisos académicos adquiridos con los estudiantes", aspect_id: a4.id)
q24 = Question.create!(item: "Mantiene una relación respetuosa con los estudiantes", aspect_id: a4.id)
q25 = Question.create!(item: "Motiva a la participación de eventos académicos de la universidad: conferencias, foros, seminarios, etc", aspect_id: a4.id)
q26 = Question.create!(item: "Se interesa en contribuir a la formación integral del estudiantes", aspect_id: a4.id)
q27 = Question.create!(item: "Mantiene una actitud responsable en el trabajo", aspect_id: a4.id)

#Evaluación al profesor por parte del director del departamento
q28 = Question.create!(item: "Demuestra actualización en los conocimientos de su área", aspect_id: a1.id)
q29 = Question.create!(item: "Comparte información, experiencias de trabajo etc", aspect_id: a1.id)
q30 = Question.create!(item: "Aporta ideas, plantea problemas de investigación relativos a su área", aspect_id: a1.id)
q31 = Question.create!(item: "Demuestra interés en utilizar bibliografía actualizada", aspect_id: a1.id)

q32 = Question.create!(item: "Orienta la asignatura en función de los objetivos del área y plan de estudios de la carrera", aspect_id: a2.id)
q33 = Question.create!(item: "Presenta el programa en una estructura lógica, acorde con los objetivos del mismo", aspect_id: a2.id)
q34 = Question.create!(item: "Desarrolla el programa en forma secuencial, y acorde con los objetivos del mismo", aspect_id: a2.id)
q35 = Question.create!(item: "La metodología del trabajo corresponde a las características del grupo", aspect_id: a2.id,)
q36 = Question.create!(item: "La metodología del trabajo corresponde a las características de la temática del área", aspect_id: a2.id,)
q37 = Question.create!(item: "Se autoevalúa para mejorar su actividad como docente", aspect_id: a2.id,)
q38 = Question.create!(item: "Actualiza periódicamente sus programas y clases en contenidos, metodología y bibliografía", aspect_id: a2.id,)
q39 = Question.create!(item: "El sistema evaluativo es coherente con las formas metodológicas empleadas", aspect_id: a2.id)

q40 = Question.create!(item: "Presenta el plan y el informe de actividades", aspect_id: a3.id)
q41 = Question.create!(item: "Es responsable y cumplido en los trabajos que se le asignan", aspect_id: a3.id)
q42 = Question.create!(item: "Cumple con la jornada de trabajo", aspect_id: a3.id)
q43 = Question.create!(item: "Cumple con el horario de clases", aspect_id: a3.id)
q44 = Question.create!(item: "Cumple con las asesorías programadas con los estudiantes", aspect_id: a3.id)
q45 = Question.create!(item: "Se interesa por el trabajo colectivo", aspect_id: a3.id)
q46 = Question.create!(item: "Cumple con las actividades programadas por el Departamento", aspect_id: a3.id)
q47 = Question.create!(item: "Atiende el proceso de presentación de notas", aspect_id: a3.id)
q48 = Question.create!(item: "Cumple con las comisiones que se encargan", aspect_id: a3.id)

q49 = Question.create!(item: "Las relaciones con los compañeros de trabajo son respetuosas y cordiales", aspect_id: a4.id)
q50 = Question.create!(item: "Su relación con los estudiantes es cordial y respetuosa", aspect_id: a4.id)
q51 = Question.create!(item: "Comunica oportunamente a las personas que corresponde, para suspender o cambiar actividades programadas", aspect_id: a4.id)
q52 = Question.create!(item: "Analiza y discute con respeto las ideas de los demás", aspect_id: a4.id)

#Evaluación al profesor por parte del decano
#Se suprime por estar repetida con q42, q53 se reemplaza con q42 en las inserciones de la tercera evaluación
#q53 = Question.create!(item: "Cumple con la jornada de trabajo", aspect_id: a3.id)
q54 = Question.create!(item: "Asiste puntualmente a las reuniones programadas por la Facultad", aspect_id: a3.id)
q55 = Question.create!(item: "Permanece en las reuniones programadas por la Facultad", aspect_id: a3.id)
q56 = Question.create!(item: "Presenta los informes solicitados por la Facultad", aspect_id: a3.id)
q57 = Question.create!(item: "Cumple con los trabajos asignados por la Facultad", aspect_id: a3.id)
q58 = Question.create!(item: "Participa activamente en las actividades programadas por la Facultad", aspect_id: a3.id)
q59 = Question.create!(item: "Conserva los bienes, documentos y materiales de la Universidad", aspect_id: a3.id)
q60 = Question.create!(item: "Cumple con los compromisos de trabajos adquiridos con la Facultad y/o la Universidad", aspect_id: a3.id)
q61 = Question.create!(item: "Tiene en cuenta los canales de comunicación existentes", aspect_id: a4.id)
q62 = Question.create!(item: "Tiene un trato respetuoso con sus compañeros", aspect_id: a4.id)
q63 = Question.create!(item: "Observa las normas inherentes a la ética de su profesión", aspect_id: a4.id)
q64 = Question.create!(item: "Contribuye a la realización de actividades complementarias a la labor académica", aspect_id: a4.id)
q65 = Question.create!(item: "Colabora en la realización de eventos especiales programados por la Facultad", aspect_id: a4.id)
q66 = Question.create!(item: "Contribuye al desarrollo de las relaciones interinstitucionales de la Facultad", aspect_id: a4.id)
q67 = Question.create!(item: "Mantiene una actitud respetuosa frente a la institución", aspect_id: a4.id)
#Evaluaciones predefinidas - Estudiante a profesor
Survey.create!(name: "Ingenierías 2014-2", survey_type_id: st1.id, :question_ids => [q1.id, q2.id, q3.id, q4.id, q5.id, q6.id, q7.id, q8.id, q9.id, q10.id, q11.id, q12.id, q13.id, q14.id, q15.id, q16.id, q17.id, q18.id, q19.id, q20.id, q21.id, q22.id, q23.id, q24.id, q25.id, q26.id, q27.id])
#Evaluaciones predefinidas - Director a profesor
Survey.create!(name: "Ingenierías 2014-2", survey_type_id: st2.id, :question_ids => [q28.id, q29.id, q30.id, q31.id, q32.id, q33.id, q34.id, q35.id, q36.id, q37.id, q38.id, q39.id, q40.id, q41.id, q42.id, q43.id, q44.id, q45.id, q46.id, q47.id, q48.id, q49.id, q50.id, q51.id, q52.id])
#Evaluaciones predefinidas - Decano a profesor
Survey.create!(name: "Ingenierías 2014-2", survey_type_id: st3.id, :question_ids => [q42.id, q54.id, q55.id, q56.id, q57.id, q58.id, q59.id, q60.id, q61.id, q62.id, q63.id, q64.id, q65.id, q66.id, q67.id])

