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
                  { description: ' Recursos, equipos y espacios de práctica', factor_id: 10 },
                  { description: ' Instalaciones e infraestructura', factor_id: 10 },
                  { description: ' Programas de bienestar universitario', factor_id: 11 },
                  { description: ' Permanencia estudiantil', factor_id: 11 },
                  { description: ' Programas de educación inclusiva sostenibles', factor_id: 12 },
                  { description: ' Apoyo financiero a estudiantes', factor_id: 12 }])

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
    { name: 'Otro' } ])

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

Question.create([{ detail: 'La institución de educación  superior cuenta con una política de educación inclusiva que permite reconocer y minimizar las barreras para el aprendizaje y la Participación.', category_id: 1, indicator_id: 1},
                 { detail: 'La institución identifica la diversidad estudiantil caracterizando sus particularidades (sociales, económicas, políticas, culturales, lingüísticas, sexuales, físicas, geográficas y relacionadas con el conflicto armado) y pone énfasis en aquellos que son más proclives a ser excluidos del sistema.', category_id: 2 , indicator_id: 2 },
                 { detail: 'La institución cuenta con estrategias y procesos que permiten y facilitan el acceso y la permanencia de los estudiantes, y adicionalmente cuenta con sistemas de becas, préstamos y estímulos que propician el ingreso y la permanencia de estudiantes académicamente valiosos y en condición de vulnerabilidad, para garantizar graduación con calidad.', category_id: 1, indicator_id: 4 },
                 { detail: 'La institución cuenta con una política que facilita la participación de todos los estudiantes en los procesos académicos y Administrativos.', category_id: 1, indicator_id: 3 },
                 { detail: 'La institución cuenta con una política que facilita la participación de todos los docentes en los procesos académicos y administrativos.', category_id: 1, indicator_id: 5 },
                 { detail: 'La institución genera los mecanismos para que los docentes participen en los procesos de docencia, investigación y extensión, transformen las prácticas pedagógicas y valoren la diversidad de sus estudiantes como parte del proceso educativo.', category_id: 2, indicator_id: 6 },
                 { detail: 'Los currículos de la institución son flexibles e interdisciplinarios y contienen elementos que facilitan el aprendizaje y el desarrollo de capacidades, potencialidades y/o competencias de la diversidad estudiantil.', category_id: 2, indicator_id: 7 },
                 { detail: 'Los procesos académicos de la institución cuentan con herramientas de evaluación flexible que reconocen las particularidades, las capacidades y las potencialidades de cada estudiante.', category_id: 1, indicator_id: 8 },
                 { detail: 'En sus procesos académicos, la institución toma   como referencia las tendencias, el estado   del arte de las disciplinas o profesiones   y los criterios de   calidad aceptados por las comunidades académicas nacionales e internacionales, estimula el contacto con miembros reconocidos de esas comunidades y promueve la cooperación con instituciones   y programas en el país y en el exterior.', category_id: 3, indicator_id: 9 },
                 { detail: 'La institución promueve la interacción con otras instituciones de los ámbitos nacional e internacional, y coordina la movilidad de profesores y estudiantes, entendida esta como el desplazamiento temporal, en doble vía, con enfoque inclusivo y propósitos académicos.', category_id: 3, indicator_id: 10 },
                 { detail: 'La institución cuenta con  centros, grupos y/o programas de investigación en temas relacionados con educación inclusiva.', category_id: 3, indicator_id: 11 },
                 { detail: 'La institución desarrolla, en los procesos de investigación, temáticas relacionadas con la educación inclusiva, y promueve estrategias enmarcadas en sus principios.', category_id: 2, indicator_id: 12 },
                 { detail: 'La institución desarrolla programas y actividades de extensión o proyección social que responden a necesidades regionales y poblacionales determinadas, teniendo en cuenta el enfoque de educación inclusiva en el contexto colombiano.', category_id: 3, indicator_id: 13 },
                 { detail: 'La IES desarrolla estrategias e implementa mecanismos de acompañamiento a sus egresados, como parte de una política de seguimiento y apoyo a la vinculación laboral.', category_id: 1, indicator_id: 14 },
                 { detail: 'La institución implementa procesos de autoevaluación y autorregulación que permiten identificar el cumplimiento institucional frente al enfoque de la educación inclusiva y sus características.', category_id: 2, indicator_id: 15 },
                 { detail: 'La institución implementa estrategias de mejoramiento continuo a partir de los resultados de las autoevaluaciones y las evaluaciones de la comunidad académica.', category_id: 2, indicator_id: 16 },
                 { detail: 'La institución cuenta con un sistema de información disponible, confiable y accesible, que orienta la formulación de políticas institucionales que fomentan la educación inclusiva en educación superior.', category_id: 1, indicator_id: 17 },
                 { detail: 'Los programas de bienestar universitario promueven, por medio de acciones concretas, la participación de los estudiantes y su adaptación a la vida universitaria, teniendo en cuenta sus particularidades y potencialidades.', category_id: 2, indicator_id: 18 },
                 { detail: 'La IES identifica, como parte del bienestar universitario, los factores asociados a la deserción de sus estudiantes, y diseña programas que favorecen la permanencia, de acuerdo con sus particularidades y necesidades diferenciales.', category_id: 2, indicator_id: 19 },
                 { detail: 'Los procesos administrativos están soportados en el enfoque de educación inclusiva y permiten identificar con claridad sus características.', category_id: 2, indicator_id: 20 },
                 { detail: 'La estructura organizacional de la institución permite desarrollar acciones específicas de educación inclusiva.', category_id: 2, indicator_id: 21 },
                 { detail: 'Los recursos, equipos y espacios de práctica son accesibles y pertinentes para corresponder a las características del enfoque de educación inclusiva.', category_id: 2, indicator_id: 22 },
                 { detail: 'Las instalaciones y la infraestructura de la institución responden a las exigencias de la normatividad vigente. En particular las NTC.', category_id: 3, indicator_id: 23 },
                 { detail: 'La institución destina recursos y garantiza la sostenibilidad de las estrategias de educación inclusiva.', category_id: 2, indicator_id: 24 },
                 { detail: 'La institución cuenta con programas especiales o establece convenios de cooperación con entidades que financian el acceso y la permanencia de los estudiantes más proclives a ser excluidos del sistema (en relación con los grupos priorizados en los lineamientos de política de educación inclusiva del Ministerio de Educación Nacional).', category_id: 2, indicator_id: 25	 }])