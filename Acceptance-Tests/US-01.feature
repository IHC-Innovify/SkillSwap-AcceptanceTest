Feature: Registro con correo universitario
  Como estudiante
  Quiero registrarme en la plataforma usando mi correo universitario
  Para poder acceder a la comunidad

  Scenario Outline: Registro exitoso con correo universitario válido
    Given que el <usuario> está en la página de registro
    When ingresa el <correo_universitario> y una <contraseña_valida>
    Then el sistema crea la cuenta y envía un mensaje de confirmación
      And se muestra "Registro exitoso"

    Examples: Datos de entrada
      | usuario        | correo_universitario              | contraseña_valida |
      | Estudiante001  | carito123@universidad.edu.pe      | Contraseña123!    |

    Examples: Datos de salida
      | mensaje_pantalla     | correo_enviado                                  |
      | Registro exitoso     | Confirmación: Cuenta creada exitosamente        |


  Scenario Outline: Intento de registro con correo personal (Negativo)
    Given que el <usuario> está en la página de registro
    When intenta registrarse con el <correo_invalido>
      And ingresa una <contraseña_valida>
    Then el sistema muestra el mensaje "Solo se admiten correos universitarios"
      And no se crea la cuenta

    Examples: Datos de entrada
      | usuario        | correo_invalido      | contraseña_valida |
      | Usuario002     | usuario@gmail.com    | ClaveSegura45!    |

    Examples: Datos de salida
      | mensaje_pantalla                         |
      | Solo se admiten correos universitarios   |