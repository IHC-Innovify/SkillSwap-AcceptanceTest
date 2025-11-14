@HU30
Feature: Indicador de “Tutor en línea”
  Como aprendiz
  Quiero ver un indicador (ej. punto verde)
  Que muestre qué tutores están online

  Scenario Outline: Identificar tutor activo
    Given que necesito ayuda urgente como <aprendiz>
    When veo la lista de resultados
    Then puedo identificar a los <tutores_online> mediante un <indicador_online>

    Examples: Datos de entrada
      | aprendiz   | tutores_online |
      | Aprendiz01 | "Maria Torres" |

    Examples: Datos de salida
      | indicador_online |
      | "Punto Verde"    |

  Scenario Outline: Estado cambia a inactivo
    Given que un <tutor> estaba en línea
    When cierra la aplicación o queda inactivo
    Then el <indicador_online> cambia a <indicador_offline>

    Examples: Datos de entrada
      | tutor        | indicador_online |
      | Maria Torres | "Punto Verde"    |

    Examples: Datos de salida
      | indicador_offline |
      | "Gris"            |

