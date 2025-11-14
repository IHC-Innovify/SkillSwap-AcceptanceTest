@HU26
Feature: Realizar una sesión de tutoría por videollamada
  Como estudiante
  Quiero una videollamada integrada
  Para participar en sesiones sin salir de la app

  Scenario Outline: Sesión exitosa y calificación
    Given que he coordinado una sesión como <aprendiz> y es la <hora_acordada>
    When hago clic en “Iniciar Sesión”
    Then la videollamada comienza
    And al finalizar la llamada, la plataforma presenta la <opcion_calificar> al tutor

    Examples: Datos de entrada
      | aprendiz   | hora_acordada |
      | Aprendiz01 | "10:00 AM"    |

    Examples: Datos de salida
      | videollamada_iniciada | opcion_calificar |
      | Sí                    | "Visible"        |

  Scenario Outline: Sesión problemática y reporte (Tutor)
    Given que estoy en una videollamada como <tutor> con un <aprendiz>
    When el <aprendiz> no se conecta
    Then puedo finalizar la llamada y seleccionar <opcion_reporte> para describir el problema

    Examples: Datos de entrada
      | tutor        | aprendiz   |
      | Maria Torres | Aprendiz02 |

    Examples: Datos de salida
      | opcion_reporte     |
      | "Reportar Usuario" |

