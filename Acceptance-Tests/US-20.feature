Feature: Calificar al aprendiz
Como estudiante tutor, quiero poder calificar al aprendiz después de la sesión para que el sistema de reputación sea mutuo.
Scenario: Calificar al aprendiz
Given que una sesión de tutoría ha finalizado,
When voy a los detalles de esa sesión,
Then tengo la opción de dejar una calificación (ej. sobre puntualidad o preparación) para el aprendiz.
Scenario: Calificación del aprendiz no es pública (Negativo)
Given que he calificado a un aprendiz,
When otros tutores ven el perfil de ese aprendiz,
Then mi calificación específica no es pública.
