
Feature: Chatear con el aprendiz
  Como estudiante tutor
  Quiero poder acceder a un chat con el aprendiz
  Directamente desde la solicitud aceptada

  Scenario Outline: Iniciar conversación
    Given que el <tutor> ha aceptado una solicitud del <aprendiz>
    When es redirigido al chat
    Then puede escribir un <primer_mensaje> para coordinar los detalles de la tutoría

    Examples: Datos de entrada
      | tutor        | aprendiz   | primer_mensaje          |
      | Maria Torres | Aprendiz01 | "Hola! ¿Cuándo puedes?" |

    Examples: Datos de salida
      | chat_iniciado |
      | Sí            |

