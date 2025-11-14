
Feature: Archivo de sesiones pasadas
  Como tutor
  Quiero un historial de mis sesiones pasadas
  Con nombres y fechas

  Scenario Outline: Consultar historial de tutorías
    Given que quiero recordar a quién ayudé el mes pasado como <tutor>
    When entro al “Historial de Sesiones”
    Then veo una lista con todas mis <sesiones_pasadas> y sus detalles

    Examples: Datos de entrada
      | tutor        |
      | Maria Torres |

    Examples: Datos de salida
      | sesiones_pasadas   |
      | "Lista Visible"    |

