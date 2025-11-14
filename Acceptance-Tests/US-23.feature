
Feature: Ver detalles de un estudiante a verificar
  Como coordinador
  Quiero poder abrir una solicitud para ver los datos del estudiante (nombre, código, universidad)
  Para validar su identidad

  Scenario Outline: Revisar datos del estudiante
    Given que estoy en la lista de solicitudes pendientes
    When hago clic en el nombre de un <estudiante>
    Then se abre una vista detallada con su <nombre_completo>, <codigo> y <correo_institucional>

    Examples: Datos de entrada
      | estudiante    |
      | "Juan Perez"  |

    Examples: Datos de salida
      | nombre_completo | codigo   | correo_institucional   |
      | "Juan Perez G." | "2019123"| "juan.perez@uni.edu.pe"|

  Scenario Outline: Comparar con sistema interno
    Given que tengo acceso a los datos del <estudiante> en la plataforma
    When comparo la información con la <base_de_datos_interna> de mi universidad
    Then puedo confirmar si es un <estado_alumno>

    Examples: Datos de entrada
      | estudiante   | base_de_datos_interna |
      | "Juan Perez" | "Sistema Académico"   |

    Examples: Datos de salida
      | estado_alumno    |
      | "Alumno Activo"  |