Feature: Pantalla de inicio de la plataforma 
Como usuario quiero que los beneficios de la plataforma sean la primera pantalla que se aprecie para conocer mejor las funciones y detalles antes de registrarme.
Scenario: Visualizar la información de la web
Given que soy un usuario que ingresa a la página por primera vez,
When ingreso a la primera pantalla,
Then se logran ver los beneficios de la plataforma junto con la información del equipo y de la misma.
Scenario: Navegación a Iniciar Sesión
Given que soy un usuario en la pantalla de inicio,
When hago clic en "Iniciar sesión",
Then el sistema debe mostrar la nueva página para iniciar sesión.
Scenario: Navegación a Registrarse
Given que soy un usuario en la pantalla de inicio,
When hago clic en "Registrarse",
Then el sistema debe mostrar la nueva página para que un usuario nuevo se registre.
Scenario: Navegación a Información
Given que soy un usuario en la pantalla de inicio,
When hago clic en "Información",
Then el sistema debe dirigir al usuario a la sección "Sobre nosotros".
