# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Factor.create([{ name: 'Mision proyecto institucional' },
    { name: 'Estudiantes' },
    { name: 'Profesores' },
    { name: 'Procesos académicos' },
    { name: 'Visibilidad nacional e internacional' },
    { name: 'Espacion de investigación, innovación, y creación artística y cultural' },
    { name: 'Pertinecia e impacto social' },
    { name: 'Autoevaluación y Autorregulacón' },
    { name: 'Bienestar institucional' },
    { name: 'Organización, Gestión y administración' },
    { name: 'Recursos de apoyo académico e infraestructura física' },
    { name: 'Recursos financieros' }])

Indicator.create([{ description: 'Barreras para el aprendizaje y la participación', factor_id: 1 },
       { description: 'Identificación y caracterización de estudiantes desde la educación inclusiva', factor_id: 1 },
       { description: 'Participación de estudiantes', factor_id: 2 },
       { description: 'Admisión, permanencia y sistemas de estímulos y créditos para estudiantes', factor_id: 2 },
       { description: 'Participación de estudiantes', factor_id: 2 },
       { description: 'Admisión, permanencia y sistemas de estímulos y créditos para estudiantes', factor_id: 3 },
       { description: 'Participación de docentes', factor_id: 3 },
       { description: 'Docentes inclusivos', factor_id: 3 },
       { description: 'Interdisciplinariedad y flexibilidad curricular', factor_id: 4 },
       { description: 'Evaluación flexible', factor_id: 4 },
       { description: 'Inserción de la institución en contextos académicos nacionales e internacionales', factor_id: 5 },
       { description: 'Relaciones externas de profesores y estudiantes', factor_id: 5 },
       { description: 'Investigación, innovación y creación artística y cultural en educación inclusiva', factor_id: 6 },
       { description: 'Articulación de la educación inclusiva con los procesos de investigación, innovación y creación artística y cultural', factor_id: 6 },
       { description: 'Extensión, proyección social y contexto regional', factor_id: 7 },
       { description: 'Seguimiento y apoyo a vinculación laboral', factor_id: 7 },
       { description: 'Procesos de autoevaluación y autorregulación con enfoque de educación inclusiva', factor_id: 8 },
       { description: 'Estrategias de mejoramiento', factor_id: 8 },
       { description: 'Sistema de información inclusivo', factor_id: 8 },
       { description: 'Procesos administrativos y de gestión flexibles', factor_id: 9 },
       { description: 'Estructura organizacional', factor_id: 9 },
       { description: 'Recursos, equipos y espacios de práctica', factor_id: 10 },
       { description: 'Instalaciones e infraestructura', factor_id: 10 },
       { description: 'Programas de bienestar universitario', factor_id: 11 },
       { description: 'Permanencia estudiantil', factor_id: 11 },
       { description: 'Programas de educación inclusiva sostenibles', factor_id: 12 },
       { description: 'Apoyo financiero a estudiantes', factor_id: 12 }])

Replay.create([{ description: 'Existe Y Se Implementa' },
    { description: 'Existe Y No Se Implementa' },
    { description: 'No Existe' },
    { description: 'No Sabe' },
    { description: 'Siempre' },
    { description: 'Algunas Veces' },
    { description: 'Nunca' },
    { description: 'Si' },
    { description: 'No' }])

Category.create([{ name: 'Exsistencia' },
      { name: 'Frecuencia' },
      { name: 'Reconocimiento' }])

Gender.create([{ name: 'Masculino' },
    { name: 'Femenino' },
    { name: 'Lgbti' } ])

Institution.create([{ name: 'Sena' },
         { name: 'Universidad autonoma del caribe' },
         { name: 'Universidad del atlantico' },
         { name: 'Universidad del norte' },
         { name: 'Universidad Simon Bolivar' }])

Group.create([{ name: 'Administrativo' },
   { name: 'Docente' },
   { name: 'Estudiante' }])

Field.create([{ name: 'Facultad' },
   { name: 'Departamento' },
   { name: 'Cargo' },
   { name: 'Dependencia' },
   { name: 'Antigüedad en el cargo(años)' },
   { name: 'Antigüedad en el cargo(meses)' },
   { name: 'Antigüedad en la institución(años)' },
   { name: 'Antigüedad en la institución(meses)' },
   { name: 'Carrera' },
   { name: 'Semestres' },
   { name: 'Año de ingreso' },
   { name: 'Semestre de ingreso' },
   { name: 'Tipo de vinculación' },
   { name: 'Horas a la semana' }])