Feature: Realizar una sesión de tutoría por videollamada 
Como estudiante, quiero una videollamada integrada para participar en sesiones sin salir de la app.
Scenario: Sesión exitosa y calificación
Given que he coordinado una sesión como aprendiz y es la hora acordada
When hago clic en “Iniciar Sesión”
Then la videollamada comienza
And al finalizar la llamada, la plataforma presenta la opción para calificar al tutor
Scenario: Sesión problemática y reporte (Tutor)
Given que estoy en una videollamada con un aprendiz
When el aprendiz no se conecta
Then puedo finalizar la llamada y seleccionar “Reportar Usuario” para describir el problema
