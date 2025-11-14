Feature: Registro con correo universitario 
Como estudiante, quiero registrarme en la plataforma usando mi correo universitario para poder acceder a la comunidad.
Scenario: Registro exitoso
Given que soy un nuevo usuario en la página de registro,
When ingreso mi correo universitario y una contraseña válida,
Then se crea mi cuenta y me llega un correo con un mensaje de confirmación de la creación de cuenta.
Scenario: Intento de registro con correo personal (Negativo)
Given que estoy en la página de registro,
When intento registrarme con un correo no institucional (ej. @gmail.com),
Then el sistema muestra un mensaje de error indicando "Solo se admiten correos universitarios".
