Feature: Chatear con el aprendiz (HU-18)
Como estudiante tutor, quiero poder acceder a un chat con el aprendiz directamente desde la solicitud aceptada.
Scenario: Iniciar conversación
Given que he aceptado una solicitud,
When soy redirigido al chat,
Then puedo escribir un primer mensaje para coordinar los detalles de la tutoría.
