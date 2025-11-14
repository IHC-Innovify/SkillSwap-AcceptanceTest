Feature: Ver detalles de un estudiante a verificar (HU-23)
Como coordinador, quiero poder abrir una solicitud para ver los datos del estudiante (nombre, código, universidad).
Scenario: Revisar datos del estudiante
Given que estoy en la lista de solicitudes pendientes
When hago clic en el nombre de un estudiante
Then se abre una vista detallada con su nombre completo, código y correo institucional
Scenario: Comparar con sistema interno
Given que tengo acceso a los datos del estudiante en la plataforma
When comparo la información con la base de datos de mi universidad
Then puedo confirmar si es un alumno activo y legítimo
