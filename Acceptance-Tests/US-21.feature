Feature: Inicio de sesión en panel
Como usuario, quiero iniciar sesión en un panel simple y profesional.
Scenario: Acceso exitoso del estudiante
Given que tengo credenciales de estudiante
When ingreso mi usuario y contraseña en la página de login
Then accedo al panel principal de estudiantes
Scenario: Acceso exitoso del coordinador
Given que tengo credenciales de coordinador
When ingreso mi usuario y contraseña en la página de login
Then accedo al panel principal de gestión
Scenario: Falla de inicio de sesión con credenciales incorrectas (Negativo)
Given que soy un usuario
When ingreso una contraseña incorrecta
Then el sistema muestra un mensaje de “Usuario o contraseña inválidos” y no permite el acceso
