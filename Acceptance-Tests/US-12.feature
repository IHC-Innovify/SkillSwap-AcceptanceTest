Feature: Dejar calificación a un tutor 
Como estudiante aprendiz, quiero poder dejar una calificación con estrellas y un breve comentario después de una sesión para valorar la ayuda recibida.
Scenario: Calificar sesión completada
Given que he finalizado una sesión de tutoría,
When voy a la sección de "Mis Sesiones" y selecciono la sesión,
Then veo una opción para calificar al tutor de 1 a 5 estrellas y dejar un comentario.
Scenario: No poder calificar antes de la sesión (Negativo)
Given que he coordinado una sesión, pero aún no ha ocurrido,
When busco la opción para calificar,
Then la función de calificación para esa sesión no está habilitada.
