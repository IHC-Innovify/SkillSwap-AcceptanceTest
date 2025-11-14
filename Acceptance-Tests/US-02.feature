Feature: Pantalla de inicio de la plataforma
  Como usuario
  Quiero que los beneficios de la plataforma sean la primera pantalla que se aprecie
  Para conocer mejor las funciones antes de registrarme

  Scenario Outline: Visualizar información principal de la plataforma
    Given que el <usuario> ingresa a la página por primera vez
    When accede a la primera pantalla
    Then se muestran los beneficios de la plataforma junto con la información del equipo

    Examples: Datos de entrada
      | usuario |
      | UsuarioNuevo01 |

    Examples: Datos de salida
      | beneficios_mostrados | informacion_equipo |
      | Sí                   | Sí                 |


  Scenario Outline: Navegación hacia Iniciar Sesión
    Given que el <usuario> está en la pantalla de inicio
    When hace clic en "Iniciar sesión"
    Then el sistema muestra la página de inicio de sesión

    Examples: Datos de entrada
      | usuario        |
      | Invitado001    |

    Examples: Datos de salida
      | destino        |
      | LoginPage      |


  Scenario Outline: Navegación hacia Registrarse
    Given que el <usuario> está en la pantalla de inicio
    When hace clic en "Registrarse"
    Then el sistema muestra la página de registro

    Examples: Datos de entrada
      | usuario        |
      | Invitado002    |

    Examples: Datos de salida
      | destino         |
      | RegisterPage    |


  Scenario Outline: Navegación hacia Información
    Given que el <usuario> está en la pantalla de inicio
    When hace clic en "Información"
    Then el sistema dirige al usuario a la sección "Sobre nosotros"

    Examples: Datos de entrada
      | usuario        |
      | Invitado003    |

    Examples: Datos de salida
      | destino          |
      | SobreNosotros    |
