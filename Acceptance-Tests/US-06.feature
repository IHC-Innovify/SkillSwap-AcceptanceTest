Feature: Ver perfil detallado de un tutor
  Como estudiante aprendiz
  Quiero ver un perfil detallado del tutor
  Para conocer su biografía, habilidades y reseñas

  Scenario Outline: Revisar perfil completo
    Given que el <usuario> está en la lista de resultados de búsqueda
    When hace clic en la tarjeta del <tutor>
    Then es dirigido al perfil del tutor donde ve su biografía, habilidades y reseñas

    Examples: Datos de entrada
      | usuario    | tutor         |
      | Aprendiz01 | Maria Torres  |

    Examples: Datos de salida
      | biografia | habilidades | reseñas |
      | Sí        | Sí          | Sí      |


  Scenario Outline: Ver reseñas de otros usuarios
    Given que el <usuario> está viendo el perfil del <tutor>
    When se desplaza hacia la sección de reseñas
    Then puede leer los comentarios y calificaciones dejadas por otros aprendices

    Examples: Datos de entrada
      | usuario    | tutor         |
      | Aprendiz02 | Luis Delgado  |

    Examples: Datos de salida
      | reseñas_visibles |
      | Sí               |


  Scenario Outline: Perfil sin reseñas (Negativo)
    Given que el <tutor> es nuevo y no tiene reseñas
    When el <usuario> visita su perfil
    Then se muestra el mensaje "Este tutor aún no tiene calificaciones"

    Examples: Datos de entrada
      | usuario    | tutor        |
      | Aprendiz03 | TutorNuevo01 |

    Examples: Datos de salida
      | mensaje                               |
      | Este tutor aún no tiene calificaciones |
