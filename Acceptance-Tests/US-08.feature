Feature: Solicitar ayuda a un tutor
  Como estudiante aprendiz
  Quiero un botón claro de "Solicitar tutoría"
  Para iniciar el contacto con un tutor

  Scenario Outline: Iniciar solicitud de tutoría
    Given que el <usuario> revisa el perfil del <tutor> y desea su ayuda
    When hace clic en el botón "Solicitar tutoría"
    Then se abre un formulario para escribir un mensaje

    Examples: Datos de entrada
      | usuario    | tutor         |
      | Aprendiz01 | Maria Torres  |

    Examples: Datos de salida
      | formulario_abierto |
      | Sí                 |


  Scenario Outline: Botón deshabilitado para tutores de la misma universidad (Negativo)
    Given que el <usuario> y el <tutor> pertenecen a la misma universidad
    When el usuario busca el botón de solicitud
    Then el botón está deshabilitado o no es visible

    Examples: Datos de entrada
      | usuario    | universidad_usuario | tutor         | universidad_tutor |
      | Aprendiz02 | UNI                 | Pedro Ramos   | UNI               |

    Examples: Datos de salida
      | solicitutoria_visible |
      | No                    |
