Feature: Usar chat interno
  Como estudiante aprendiz
  Quiero tener un chat simple dentro de la aplicación
  Para coordinar la sesión sin tener que compartir mi número de WhatsApp

  Scenario Outline: Enviar y recibir mensajes
    Given que mi solicitud fue aceptada y estoy en la ventana de chat con el <tutor>
    When escribo un <mensaje> y presiono "Enviar"
    Then mi <mensaje> aparece en la conversación y puedo ver los mensajes que el <tutor> me envía

    Examples: Datos de entrada
      | usuario    | tutor        | mensaje                 |
      | Aprendiz01 | Maria Torres | "Hola, ¿puedes mañana?" |

    Examples: Datos de salida
      | mensaje_visible |
      | Sí              |

  Scenario Outline: Intentar chatear antes de la aceptación (Negativo)
    Given que he enviado una solicitud al <tutor>, pero aún no la ha aceptado
    When intento buscar una opción para chatear con él
    Then el botón de "Enviar solicitud" cambia de color y no puede contactar con el <tutor>

    Examples: Datos de entrada
      | usuario    | tutor        |
      | Aprendiz01 | Maria Torres |

    Examples: Datos de salida
      | chat_habilitado |
      | No              |