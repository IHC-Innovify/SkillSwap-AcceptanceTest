Feature: Visualización de resultados de búsqueda
  Como estudiante aprendiz
  Quiero ver los resultados como tarjetas con foto, universidad y calificación
  Para elegir un tutor rápidamente

  Scenario Outline: Ver lista de tutores
    Given que el <usuario> ha realizado una búsqueda
    When la página de resultados carga
    Then se muestran tarjetas con foto, nombre, universidad y calificación

    Examples: Datos de entrada
      | usuario    |
      | Aprendiz01 |

    Examples: Datos de salida
      | tarjetas_mostradas |
      | Sí                 |


  Scenario Outline: No ver tutores de mi misma universidad
    Given que la regla de negocio impide conexiones dentro de la misma institución
    When el <usuario> visualiza los resultados
    Then la lista excluye tutores de la misma universidad

    Examples: Datos de entrada
      | usuario    | universidad_usuario |
      | Aprendiz02 | UNI                 |

    Examples: Datos de salida
      | excluidos_misma_universidad |
      | Sí                          |
