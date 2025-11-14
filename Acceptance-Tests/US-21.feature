
Feature: Inicio de sesión en panel
  Como usuario
  Quiero iniciar sesión en un panel simple y profesional
  Para acceder a mis funciones

  Scenario Outline: Acceso exitoso del estudiante
    Given que tengo <credenciales> de <rol_estudiante>
    When ingreso mi <usuario> y <contrasena> en la página de login
    Then accedo al panel principal de estudiantes

    Examples: Datos de entrada
      | credenciales | rol_estudiante | usuario    | contrasena |
      | "Válidas"    | "Estudiante"   | "user123"  | "pass123"  |

    Examples: Datos de salida
      | acceso_concedido | panel_mostrado |
      | Sí               | "Estudiante"   |

  Scenario Outline: Acceso exitoso del coordinador
    Given que tengo <credenciales> de <rol_coordinador>
    When ingreso mi <usuario> y <contrasena> en la página de login
    Then accedo al panel principal de gestión

    Examples: Datos de entrada
      | credenciales | rol_coordinador | usuario   | contrasena |
      | "Válidas"    | "Coordinador"   | "admin01" | "admin_pass" |

    Examples: Datos de salida
      | acceso_concedido | panel_mostrado |
      | Sí               | "Gestión"      |

  Scenario Outline: Falla de inicio de sesión con credenciales incorrectas (Negativo)
    Given que soy un <usuario>
    When ingreso una <contrasena_incorrecta>
    Then el sistema muestra un <mensaje_error> y no permite el acceso

    Examples: Datos de entrada
      | usuario   | contrasena_incorrecta |
      | "user123" | "pass_erronea"        |

    Examples: Datos de salida
      | mensaje_error                   |
      | "Usuario o contraseña inválidos" |

