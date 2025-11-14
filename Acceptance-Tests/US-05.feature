Feature: Visualización de resultados de búsqueda
Como estudiante aprendiz, quiero ver los resultados de búsqueda como una lista de perfiles de tutores con su foto, universidad y calificación para poder elegir rápido.
Scenario: Ver lista de tutores
Given que he buscado una materia,
When la página de resultados carga,
Then veo tarjetas de perfil para cada tutor, mostrando su foto, nombre, universidad y su calificación promedio.
Scenario: No ver tutores de mi misma universidad
Given que la regla de negocio impide conexiones dentro de la misma institución,
When veo los resultados de búsqueda,
Then la lista excluye a todos los tutores que pertenecen a mi misma universidad.
