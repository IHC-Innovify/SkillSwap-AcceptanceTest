
Feature: Dashboard visual con reportes
  Como coordinador
  Quiero ver estadísticas clave en mi panel
  (ej. verificados vs pendientes)

  Scenario Outline: Análisis rápido de la situación
    Given que inicio sesión en mi panel como <coordinador>
    When veo el dashboard
    Then se muestra un <reporte_estadistico> con la cantidad de estudiantes verificados y pendientes

    Examples: Datos de entrada
      | coordinador |
      | "Coord_UNI" |

    Examples: Datos de salida
      | reporte_estadistico               |
      | "Visible (Ej: 50 Verif. / 10 Pend.)" |