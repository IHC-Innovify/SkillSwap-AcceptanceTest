Feature: Archivo de sesiones pasadas 
Como tutor, quiero un historial de mis sesiones pasadas con nombres y fechas.
Scenario: Consultar historial de tutorías
Given que quiero recordar a quién ayudé el mes pasado
When entro al “Historial de Sesiones”
Then veo una lista con todas mis sesiones y sus detalles
