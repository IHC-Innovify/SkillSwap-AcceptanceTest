Feature: Usar chat interno 
Como estudiante aprendiz, quiero tener un chat simple dentro de la aplicación para coordinar la sesión sin tener que compartir mi número de WhatsApp.
Scenario: Enviar y recibir mensajes
Given que mi solicitud fue aceptada y estoy en la ventana de chat,
When escribo un mensaje y presiono "Enviar",
Then mi mensaje aparece en la conversación y puedo ver los mensajes que el tutor me envía.
Scenario: Intentar chatear antes de la aceptación (Negativo)
Given que he enviado una solicitud a un tutor, pero aún no la ha aceptado,
When intento buscar una opción para chatear con él,
Then el botón de "Enviar solicitud" cambia de color y no puede contactar con el tutor.
