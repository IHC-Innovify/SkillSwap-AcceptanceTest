Feature: Visualizar lista de verificaciones pendientes (HU-22)
Como coordinador, quiero ver una lista de “Verificación Pendiente” en la pantalla principal de mi panel.
Scenario: Ver lista de solicitudes
Given que hay estudiantes de mi institución esperando validación
When ingreso al panel de verificaciones
Then veo una lista con el nombre, universidad y código de cada estudiante pendiente
Scenario: No ver solicitudes de otras universidades (Negativo)
Given que soy el coordinador de la Universidad A
When reviso la lista de pendientes
Then solo veo solicitudes de estudiantes de la Universidad A
Scenario: Solicitud con formato de código incorrecto (Negativo)
Given que estoy revisando la lista de verificaciones pendientes
When una solicitud contiene un código que no sigue el formato de mi institución
Then esa solicitud aparece con un icono de advertencia o resaltada visualmente
