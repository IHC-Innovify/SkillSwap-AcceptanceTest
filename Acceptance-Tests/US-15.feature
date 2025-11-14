Feature: Recibir notificación de solicitud (HU-15)
Como estudiante tutor, quiero recibir una notificación clara cuando un aprendiz me solicite ayuda.
Scenario: Notificación de nueva solicitud
Given que un aprendiz me ha enviado una solicitud de ayuda,
When abro la aplicación,
Then veo un indicador de notificación en el icono correspondiente.
Scenario: Ver detalles desde la notificación
Given que recibo una notificación,
When hago clic en ella,
Then soy llevado a una pantalla donde puedo ver los detalles de la solicitud.

