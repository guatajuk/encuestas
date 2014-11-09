user = User.new
user.email = "admin@seu.com"
user.password = "admin1234"
user.save

survey_type_list = [
                    "Estudiantes a profesor", 
                    "Decano a profesor", 
                    "Director de programa a profesor"
]

a1 = Aspect.create(name: "Conocimiento")
a2 = Aspect.create(name: "Metodología")
a3 = Aspect.create(name: "Cumplimiento de labores")
a4 = Aspect.create(name: "Relaciones Universitarias")


question_list =[
                #Evaluación al profesor por parte de los estudiantes
                [a1.id,"Demuestra dominio en el manejo de los temas que trata"],
                [a1.id,"Utiliza los conceptos propios de la asignatura"],
                [a1.id,"Responde con claridad a las preguntas formuladas por los estudiantes"],
                [a1.id,"Relaciona los contenidos del curso con otras áreas del conocimiento"],
                [a2.id,"Mantiene el interés de sus alumnos por los temas de la asignatura"],
                [a2.id,"Destaca las ideas principales de los temas"],
                [a2.id,"Formula preguntas que inducen al estudiante a razonar"],
                [a2.id,"Orienta al estudiante en la búsqueda de respuestas"],
                [a2.id,"Es claro al presentar la información, facilitando el aprendizaje al alumno"],
                [a2.id,"Recomienda referencias bibliográficas acordes con los temas de estudio"],
                [a2.id,"Estimula la participación del estudiante en clase por medio de talleres, grupos de estudio, exposiciones etc."],
                [a2.id,"La exposición de los temas es ordenada y responde a la dinámica del curso"],
                [a2.id,"Utiliza diversos sistemas educativos distintos a las clase magistral"],
                [a2.id,"Fomenta en los estudiantes el uso del vocabulario propio de la asignatura"],
                [a2.id,"Mantiene el control de la clase"],
                [a2.id,"Cumple con el programa propuesto"],
                [a2.id,"Cumple las normas y criterios de evaluación establecidos en el programa y convenios con los estudiantes"],
                [a2.id,"Analiza con los estudiantes los resultados de las evaluaciones"],
                [a2.id,"Motiva a los estudiantes a realizar las prácticas o talleres y presta asesoría oportuna"],
                [a2.id,"Facilita la elaboración de guías apropiadas para el desarrollo del trabajo práctico"],
                [a2.id,"Existe correspondencia entre la información teórica y el trabajo práctico"],
                [a2.id,"Estimula el análisis y la reflexión sobre el trabajo práctico"],
                [a4.id,"Cumple con los compromisos académicos adquiridos con los estudiantes"],
                [a4.id,"Mantiene una relación respetuosa con los estudiantes"],
                [a4.id,"Motiva a la participación de eventos académicos de la universidad: conferencias, foros, seminarios, etc."],
                [a4.id,"Se interesa en contribuir a la formación integral del estudiantes"],
                [a4.id,"Mantiene una actitud responsable en el trabajo"],
                #Evaluación al profesor por parte del director del departamento
                [a1.id,"Demuestra actualización en los conocimientos de su área"],
                [a1.id,"Comparte información, experiencias de trabajo etc"],
                [a1.id,"Aporta ideas, plantea problemas de investigación relativos a su área"],
                [a1.id,"Demuestra interés en utilizar bibliografía actualizada"],
                [a2.id,"Orienta la asignatura en función de los objetivos del área y plan de estudios de la carrera"],
                [a2.id,"Presenta el programa en una estructura lógica, acorde con los objetivos del mismo"],
                [a2.id,"Presenta el programa en una estructura lógica, acorde con los objetivos del mismo"],
                [a2.id,"Desarrolla el programa en forma secuencial, y acorde con los objetivos del mismo"],
                [a2.id,"La metodología del trabajo corresponde a las características del grupo"],
                [a2.id,"La metodología del trabajo corresponde a las características de la temática del área"],
                [a2.id,"Se autoevalúa para mejorar su actividad como docente"],
                [a2.id,"Actualiza periódicamente sus programas y clases en contenidos, metodología y bibliografía"],
                [a2.id,"El sistema evaluativo es coherente con las formas metodológicas empleadas"],
                [a3.id,"Presenta el plan y el informe de actividades"],
                [a3.id,"Es responsable y cumplido en los trabajos que se le asignan"],
                [a3.id,"Cumple con la jornada de trabajo"],
                [a3.id,"Cumple con el horario de clases"],
                [a3.id,"Cumple con las asesorías programadas con los estudiantes"],
                [a3.id,"Se interesa por el trabajo colectivo"],
                [a3.id,"Cumple con las actividades programadas por el Departamento"],
                [a3.id,"Atiende el proceso de presentación de notas"],
                [a3.id,"Cumple con las comisiones que se encargan"],
                [a4.id,"Las relaciones con los compañeros de trabajo son respetuosas y cordiales"],
                [a4.id,"Su relación con los estudiantes es cordial y respetuosa"],
                [a4.id,"Comunica oportunamente a las personas que corresponde, para suspender o cambiar actividades programadas"],
                [a4.id,"Analiza y discute con respeto las ideas de los demás"],
                #Evaluación al profesor por parte del decano
                [a3.id,"Asiste puntualmente a las reuniones programadas por la Facultad"],
                [a3.id,"Permanece en las reuniones programadas por la Facultad"],
                [a3.id,"Presenta los informes solicitados por la Facultad"],
                [a3.id,"Cumple con los trabajos asignados por la Facultad"],
                [a3.id,"Participa activamente en las actividades programadas por la Facultad"],
                [a3.id,"Conserva los bienes, documentos y materiales de la Universidad"],
                [a3.id,"Cumple con los compromisos de trabajos adquiridos con la Facultad y/o la Universidad"],
                [a4.id,"Tiene en cuenta los canales de comunicación existentes"],
                [a4.id,"Tiene un trato respetuoso con sus compañeros"],
                [a4.id,"Observa las normas inherentes a la ética de su profesión"],
                [a4.id,"Contribuye a la realización de actividades complementarias a la labor académica"],
                [a4.id,"Colabora en la realización de eventos especiales programados por la Facultad"],
                [a4.id,"Contribuye al desarrollo de las relaciones interinstitucionales de la Facultad"],
                [a4.id,"Mantiene una actitud respetuosa frente a la institución"]
               ] 

question_list.each do |aspect, item|
  Question.create(aspect: aspect, item: item)
end

survey_type_list.each do |type|
  SurveyType.create(name: type)
end

