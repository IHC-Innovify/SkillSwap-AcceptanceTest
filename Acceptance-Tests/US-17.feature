
Feature: Aceptar o rechazar solicitud
  Como estudiante tutor
  Quiero tener iconos simples para "Aceptar" o "Rechazar" en cada solicitud que reciba
  Para gestionarlas rápidamente

  Scenario Outline: Aceptar una solicitud
    Given que el <tutor> ha revisado una <solicitud> y quiere ayudar
    When presiona el botón "Aceptar"
    Then se abre un chat con el <aprendiz> y la <solicitud> cambia de estado a "Aceptada"

    Examples: Datos de entrada
      | tutor        | aprendiz   | solicitud |
      | Maria Torres | Aprendiz01 | "S-123"   |

    Examples: Datos de salida
      | chat_abierto | estado_solicitud |
      | Sí           | "Aceptada"       |

  Scenario Outline: Rechazar una solicitud
    Given que el <tutor> no tiene tiempo para ayudar con una <solicitud>
    When presiona el botón "Rechazar"
    Then la <solicitud> se cierra y el <aprendiz> recibe una notificación

    Examples: Datos de entrada
      | tutor        | aprendiz   | solicitud |
      | Maria Torres | Aprendiz02 | "S-124"   |

    Examples: Datos de salida
      | solicitud_cerrada | notificacion_enviada |
      | Sí                | Sí                   |
