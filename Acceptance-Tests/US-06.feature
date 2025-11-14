Feature: Ver perfil detallado de un tutor 
Como estudiante aprendiz, quiero poder hacer clic en el perfil de un tutor para ver más detalles, como su biografía y las reseñas de otros estudiantes.
Scenario: Revisar perfil completo
Given que estoy en la lista de resultados de búsqueda,
When hago clic en la tarjeta de un tutor,
Then soy dirigido a su página de perfil completa donde veo su descripción, lista de habilidades y reseñas.
Scenario: Ver reseñas de otros
Given que estoy viendo el perfil de un tutor,
When me desplazo hacia la sección de reseñas,
Then puedo leer los comentarios y ver las calificaciones que otros aprendices le han dejado.
Scenario: Perfil sin reseñas (Negativo)
Given que un tutor es nuevo y no ha completado ninguna sesión,
When visito su perfil,
Then la sección de reseñas muestra un mensaje como "Este tutor aún no tiene calificaciones".
