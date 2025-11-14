
Feature: Aprobar o rechazar una verificación
  Como coordinador
  Quiero botones claros de “Aceptar” y “Rechazar”
  Para procesar solicitudes

  Scenario Outline: Aprobar estudiante
    Given que he verificado que un <estudiante> es legítimo
    When presiono el botón “Aprobar”
    Then el perfil del <estudiante> se activa y desaparece de mi <lista_pendiente>

    Examples: Datos de entrada
      | coordinador | estudiante   | lista_pendiente |
      | "Coord_UNI" | "Juan Perez" | "Pendientes"    |

    Examples: Datos de salida
      | perfil_activo | lista_actualizada |
      | Sí            | "Actualizada"     |

  Scenario Outline: Confirmación antes de una acción crítica (Negativo)
    Given que estoy a punto de rechazar una <solicitud>
    When hago clic en “Rechazar”
    Then el sistema muestra una <ventana_confirmacion>

    Examples: Datos de entrada
      | coordinador | solicitud |
      | "Coord_UNI" | "S-126"   |

    Examples: Datos de salida
      | ventana_confirmacion                    |
      | "¿Estás seguro de que quieres rechazar...?" |

