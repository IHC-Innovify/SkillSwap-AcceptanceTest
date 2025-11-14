Feature: Añadir descripción al perfil (HU-14)
Como estudiante tutor, quiero tener una sección en mi perfil para escribir una breve descripción sobre mí y mi método de enseñanza.
Scenario: Guardar biografía
Given que estoy en la pantalla de "Editar Perfil",
When escribo una descripción en el campo de "Biografía" y guardo,
Then el texto se muestra públicamente en mi perfil.
Scenario: Límite de caracteres (Negativo)
Given que estoy escribiendo mi biografía,
When intento escribir más del límite de caracteres permitido (ej. 500),
Then el sistema no me permite escribir más y muestra un contador de caracteres.
