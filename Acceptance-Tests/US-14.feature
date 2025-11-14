
Feature: Añadir descripción al perfil
  Como estudiante tutor
  Quiero tener una sección en mi perfil para escribir una breve descripción sobre mí y mi método de enseñanza
  Para que los aprendices me conozcan mejor

  Scenario Outline: Guardar biografía
    Given que estoy en la pantalla de "Editar Perfil" como <tutor>
    When escribo una <descripcion> en el campo de "Biografía" y guardo
    Then el texto se muestra públicamente en mi perfil

    Examples: Datos de entrada
      | tutor        | descripcion                                |
      | Maria Torres | "Apasionada por las matemáticas, te ayudaré" |

    Examples: Datos de salida
      | biografia_guardada |
      | Sí                 |

  Scenario Outline: Límite de caracteres (Negativo)
    Given que estoy escribiendo mi biografía y el <limite> es 500 caracteres
    When intento escribir más del <limite> de caracteres permitido
    Then el sistema no me permite escribir más y muestra un contador de caracteres

    Examples: Datos de entrada
      | tutor        | limite |
      | Maria Torres | 500    |

    Examples: Datos de salida
      | escritura_bloqueada | contador_visible |
      | Sí                  | Sí (ej. "500/500") |

