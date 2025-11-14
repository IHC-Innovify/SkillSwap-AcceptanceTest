Feature: Aprobar o rechazar una verificación
Como coordinador, quiero botones claros de “Aceptar” y “Rechazar” para procesar solicitudes.
Scenario: Aprobar estudiante
Given que he verificado que un estudiante es legítimo
When presiono el botón “Aprobar”
Then el perfil del estudiante se activa y desaparece de mi lista pendiente
Scenario: Confirmación antes de una acción crítica (Negativo)
Given que estoy a punto de rechazar una solicitud
When hago clic en “Rechazar”
Then el sistema muestra una ventana de confirmación: “¿Estás seguro de que quieres rechazar a este estudiante?”
