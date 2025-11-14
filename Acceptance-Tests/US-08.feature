Feature: Solicitar ayuda a un tutor
Como estudiante aprendiz, quiero un botón claro de "Solicitar tutoría" en el perfil del tutor para iniciar el contacto.
Scenario: Iniciar solicitud
Given que he revisado el perfil de un tutor y quiero su ayuda,
When hago clic en el botón "Solicitar tutoría",
Then se abre una ventana o formulario para que pueda escribir mi mensaje.
Scenario: Botón deshabilitado para tutores de la misma universidad (Negativo)
Given que llego al perfil de un tutor de mi misma universidad,
When busco el botón de solicitud,
Then el botón "Solicitar tutoría" está deshabilitado o no es visible.
