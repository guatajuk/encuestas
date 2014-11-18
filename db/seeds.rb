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

SurveyType.create(name: "Estudiantes a profesor")
SurveyType.create(name: "Decano a profesor")
SurveyType.create(name: "Director de programa a profesor")

a1 = Aspect.create(name: "Conocimiento")
a2 = Aspect.create(name: "Metodología")
a3 = Aspect.create(name: "Cumplimiento de Labores")
a4 = Aspect.create(name: "Relaciones Universitarias")

#Evaluación al profesor por parte de los estudiantes
Question.create(item: "Demuestra dominio en el manejo de los temas que trata", aspect: a1.id)
Question.create(item: "Utiliza los conceptos propios de la asignatura", aspect: a1.id)
Question.create(item: "Responde con claridad a las preguntas formuladas por los estudiantes", aspect: a1.id)
Question.create(item: "Relaciona los contenidos del curso con otras áreas del conocimiento", aspect: a1.id)
Question.create(item: "Mantiene el interés de sus alumnos por los temas de la asignatura", aspect: a2.id)
Question.create(item: "Destaca las ideas principales de los temas", aspect: a2.id)
Question.create(item: "Formula preguntas que inducen al estudiante a razonar", aspect: a2.id)
Question.create(item: "Orienta al estudiante en la búsqueda de respuestas", aspect: a2.id)
Question.create(item: "Es claro al presentar la información, facilitando el aprendizaje al alumno", aspect: a2.id)
Question.create(item: "Recomienda referencias bibliográficas acordes con los temas de estudio", aspect: a2.id)
Question.create(item: "Estimula la participación del estudiante en clase por medio de talleres, grupos de estudio, exposiciones etc", aspect: a2.id)
Question.create(item: "La exposición de los temas es ordenada y responde a la dinámica del curso", aspect: a2.id)
Question.create(item: "Utiliza diversos sistemas educativos distintos a las clase magistral", aspect: a2.id)
Question.create(item: "Fomenta en los estudiantes el uso del vocabulario propio de la asignatura", aspect: a2.id)
Question.create(item: "Mantiene el control de la clase", aspect: a2.id)
Question.create(item: "Cumple con el programa propuesto", aspect: a2.id)
Question.create(item: "Cumple las normas y criterios de evaluación establecidos en el programa y convenios con los estudiantes", aspect: a2.id)
Question.create(item: "Analiza con los estudiantes los resultados de las evaluaciones", aspect: a2.id)
Question.create(item: "Motiva a los estudiantes a realizar las prácticas o talleres y presta asesoría oportuna", aspect: a2.id)
Question.create(item: "Facilita la elaboración de guías apropiadas para el desarrollo del trabajo práctico", aspect: a2.id)
Question.create(item: "Existe correspondencia entre la información teórica y el trabajo práctico", aspect: a2.id)
Question.create(item: "Estimula el análisis y la reflexión sobre el trabajo práctico", aspect: a2.id)
Question.create(item: "Cumple con los compromisos académicos adquiridos con los estudiantes", aspect: a4.id)
Question.create(item: "Mantiene una relación respetuosa con los estudiantes", aspect: a4.id)
Question.create(item: "Motiva a la participación de eventos académicos de la universidad: conferencias, foros, seminarios, etc", aspect: a4.id)
Question.create(item: "Se interesa en contribuir a la formación integral del estudiantes", aspect: a4.id)
Question.create(item: "Mantiene una actitud responsable en el trabajo", aspect: a4.id)

#Evaluación al profesor por parte del director del departamento
Question.create(item: "Demuestra actualización en los conocimientos de su área", aspect: a1.id)
Question.create(item: "Comparte información, experiencias de trabajo etc", aspect: a1.id)
Question.create(item: "Aporta ideas, plantea problemas de investigación relativos a su área", aspect: a1.id)
Question.create(item: "Demuestra interés en utilizar bibliografía actualizada", aspect: a1.id)
Question.create(item: "Orienta la asignatura en función de los objetivos del área y plan de estudios de la carrera", aspect: a2.id)
Question.create(item: "Presenta el programa en una estructura lógica, acorde con los objetivos del mismo", aspect: a2.id,)
Question.create(item: "Presenta el programa en una estructura lógica, acorde con los objetivos del mismo", aspect: a2.id,)
Question.create(item: "Desarrolla el programa en forma secuencial, y acorde con los objetivos del mismo", aspect: a2.id,)
Question.create(item: "La metodología del trabajo corresponde a las características del grupo", aspect: a2.id,)
Question.create(item: "La metodología del trabajo corresponde a las características de la temática del área", aspect: a2.id,)
Question.create(item: "Se autoevalúa para mejorar su actividad como docente", aspect: a2.id,)
Question.create(item: "Actualiza periódicamente sus programas y clases en contenidos, metodología y bibliografía", aspect: a2.id,)
Question.create(item: "El sistema evaluativo es coherente con las formas metodológicas empleadas", aspect: a2.id)
Question.create(item: "Presenta el plan y el informe de actividades", aspect: a3.id)
Question.create(item: "Es responsable y cumplido en los trabajos que se le asignan", aspect: a3.id)
Question.create(item: "Cumple con la jornada de trabajo", aspect: a3.id)
Question.create(item: "Cumple con el horario de clases", aspect: a3.id)
Question.create(item: "Cumple con las asesorías programadas con los estudiantes", aspect: a3.id)
Question.create(item: "Se interesa por el trabajo colectivo", aspect: a3.id)
Question.create(item: "Cumple con las actividades programadas por el Departamento", aspect: a3.id)
Question.create(item: "Atiende el proceso de presentación de notas", aspect: a3.id)
Question.create(item: "Cumple con las comisiones que se encargan", aspect: a3.id)
Question.create(item: "Las relaciones con los compañeros de trabajo son respetuosas y cordiales", aspect: a4.id)
Question.create(item: "Su relación con los estudiantes es cordial y respetuosa", aspect: a4.id)
Question.create(item: "Comunica oportunamente a las personas que corresponde, para suspender o cambiar actividades programadas", aspect: a4.id)
Question.create(item: "Analiza y discute con respeto las ideas de los demás", aspect: a4.id)

#Evaluación al profesor por parte del decano
Question.create(item: "Asiste puntualmente a las reuniones programadas por la Facultad", aspect: a3.id)
Question.create(item: "Permanece en las reuniones programadas por la Facultad", aspect: a3.id)
Question.create(item: "Presenta los informes solicitados por la Facultad", aspect: a3.id)
Question.create(item: "Cumple con los trabajos asignados por la Facultad", aspect: a3.id)
Question.create(item: "Participa activamente en las actividades programadas por la Facultad", aspect: a3.id)
Question.create(item: "Conserva los bienes, documentos y materiales de la Universidad", aspect: a3.id)
Question.create(item: "Cumple con los compromisos de trabajos adquiridos con la Facultad y/o la Universidad", aspect: a3.id)
Question.create(item: "Tiene en cuenta los canales de comunicación existentes", aspect: a4.id)
Question.create(item: "Tiene un trato respetuoso con sus compañeros", aspect: a4.id)
Question.create(item: "Observa las normas inherentes a la ética de su profesión", aspect: a4.id)
Question.create(item: "Contribuye a la realización de actividades complementarias a la labor académica", aspect: a4.id)
Question.create(item: "Colabora en la realización de eventos especiales programados por la Facultad", aspect: a4.id)
Question.create(item: "Contribuye al desarrollo de las relaciones interinstitucionales de la Facultad", aspect: a4.id)
Question.create(item: "Mantiene una actitud respetuosa frente a la institución", aspect: a4.id)
