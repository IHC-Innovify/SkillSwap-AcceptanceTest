
Feature: Calificar al aprendiz
  Como estudiante tutor
  Quiero poder calificar al aprendiz después de la sesión
  Para que el sistema de reputación sea mutuo

  Scenario Outline: Calificar al aprendiz
    Given que una sesión de tutoría con el <aprendiz> ha finalizado
    When el <tutor> va a los detalles de esa sesión
    Then tiene la opción de dejar una <calificacion> para el <aprendiz>

    Examples: Datos de entrada
      | tutor        | aprendiz   |
      | Maria Torres | Aprendiz01 |

    Examples: Datos de salida
      | calificacion     |
      | "Puntualidad"    |

  Scenario Outline: Calificación del aprendiz no es pública (Negativo)
    Given que el <tutor_A> ha calificado a un <aprendiz>
    When el <tutor_B> ve el perfil de ese <aprendiz>
    Then la calificación específica del <tutor_A> no es pública

    Examples: Datos de entrada
      | tutor_A      | tutor_B     | aprendiz   |
      | Maria Torres | Pedro Ramos | Aprendiz01 |

    Examples: Datos de salida
      | calificacion_publica |
      | No                   |

