# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Factor.create([{ detalle: 'Mision proyecto institucional' },
               { detalle: 'Estudiantes' },
               { detalle: 'Profesores' },
               { detalle: 'Procesos académicos' },
               { detalle: 'Visibilidad nacional e internacional' },
               { detalle: 'Espacion de investigación, innovación, y creación artística y cultural' },
               { detalle: 'Pertinecia e impacto social' },
               { detalle: 'Autoevaluación y Autorregulacón' },
               { detalle: 'Bienestar institucional' },
               { detalle: 'Organización, Gestión y administración' },
               { detalle: 'Recursos de apoyo académico e infraestructura física' },
               { detalle: 'Recursos financieros' }])

Indicator.create([{ detalle: 'Barreras para el aprendizaje y la participación', factor_id: 1 },
                  { detalle: 'Identificación y caracterización de estudiantes desde la educación inclusiva', factor_id: 1 },
                  { detalle: 'Participación de estudiantes', factor_id: 2 },
                  { detalle: 'Admisión, permanencia y sistemas de estímulos y créditos para estudiantes', factor_id: 2 },
                  { detalle: 'Participación de estudiantes', factor_id: 2 },
                  { detalle: 'Admisión, permanencia y sistemas de estímulos y créditos para estudiantes', factor_id: 3 },
                  { detalle: 'Participación de docentes', factor_id: 3 },
                  { detalle: 'Docentes inclusivos', factor_id: 3 },
                  { detalle: 'Interdisciplinariedad y flexibilidad curricular', factor_id: 4 },
                  { detalle: 'Evaluación flexible', factor_id: 4 },
                  { detalle: 'Inserción de la institución en contextos académicos nacionales e internacionales', factor_id: 5 },
                  { detalle: 'Relaciones externas de profesores y estudiantes', factor_id: 5 },
                  { detalle: 'Investigación, innovación y creación artística y cultural en educación inclusiva', factor_id: 6 },
                  { detalle: 'Articulación de la educación inclusiva con los procesos de investigación, innovación y creación artística y cultural', factor_id: 6 },
                  { detalle: 'Extensión, proyección social y contexto regional', factor_id: 7 },
                  { detalle: 'Seguimiento y apoyo a vinculación laboral', factor_id: 7 },
                  { detalle: 'Procesos de autoevaluación y autorregulación con enfoque de educación inclusiva', factor_id: 8 },
                  { detalle: 'Estrategias de mejoramiento', factor_id: 8 },
                  { detalle: 'Sistema de información inclusivo', factor_id: 8 },
                  { detalle: 'Procesos administrativos y de gestión flexibles', factor_id: 9 },
                  { detalle: 'Estructura organizacional', factor_id: 9 },
                  { detalle: 'Recursos, equipos y espacios de práctica', factor_id: 10 },
                  { detalle: 'Instalaciones e infraestructura', factor_id: 10 },
                  { detalle: 'Programas de bienestar universitario', factor_id: 11 },
                  { detalle: 'Permanencia estudiantil', factor_id: 11 },
                  { detalle: 'Programas de educación inclusiva sostenibles', factor_id: 12 },
                  { detalle: 'Apoyo financiero a estudiantes', factor_id: 12 }])

Replay.create([{ detalle: 'Existe Y Se Implementa' },
               { detalle: 'Existe Y No Se Implementa' },
               { detalle: 'No Existe' },
               { detalle: 'No Sabe' },
               { detalle: 'Siempre' },
               { detalle: 'Algunas Veces' },
               { detalle: 'Nunca' },
               { detalle: 'Si' },
               { detalle: 'No' }])

Category.create([{ detalle: 'Exsistencia' },
                 { detalle: 'Frecuencia' },
                 { detalle: 'Reconocimiento' }])

Gender.create([{ detalle: 'Masculino' },
               { detalle: 'Femenino' },
               { detalle: 'Lgbti' } ])

Institution.create([{ name: 'Sena' },
                    { name: 'Universidad autonoma del caribe' },
                    { name: 'Universidad del atlantico' },
                    { name: 'Universidad del norte' },
                    { name: 'Universidad Simon Bolivar' },])
