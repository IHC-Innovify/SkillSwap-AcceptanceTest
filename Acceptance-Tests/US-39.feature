
Feature: Pizarra virtual integrada
  Como tutor
  Quiero una pizarra virtual
  Para dibujar diagramas y fórmulas durante la sesión

  Scenario Outline: Explicar un problema de matemáticas
    Given que estoy en una sesión de tutoría de <materia>
    When abro la pizarra virtual
    Then puedo escribir y resolver una <ecuacion> paso a paso en tiempo real

    Examples: Datos de entrada
      | tutor        | materia   | ecuacion        |
      | Maria Torres | "Álgebra" | "2x + 5 = 15"   |

    Examples: Datos de salida
      | pizarra_abierta | resolucion_visible |
      | Sí              | Sí                 |

  Scenario Outline: Colaboración en la pizarra
    Given que el <aprendiz> tiene una duda
    When le doy el <control_pizarra>
    Then puede marcar o resaltar en la pizarra la parte que no entiende

    Examples: Datos de entrada
      | aprendiz   | control_pizarra |
      | Aprendiz01 | "Habilitado"    |

    Examples: Datos de salida
      | puede_marcar |
      | Sí           |

