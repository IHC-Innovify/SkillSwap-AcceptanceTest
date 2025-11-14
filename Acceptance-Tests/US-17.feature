Feature: Aceptar o rechazar solicitud (HU-17)
Como estudiante tutor, quiero tener iconos simples para "Aceptar" o "Rechazar" en cada solicitud que reciba.
Scenario: Aceptar una solicitud
Given que he revisado una solicitud y quiero ayudar,
When presiono el botón "Aceptar",
Then se abre un chat con el aprendiz y la solicitud cambia de estado a "Aceptada".
Scenario: Rechazar una solicitud
Given que no tengo tiempo para ayudar con una solicitud,
When presiono el botón "Rechazar",
Then la solicitud se cierra y el aprendiz recibe una notificación.
