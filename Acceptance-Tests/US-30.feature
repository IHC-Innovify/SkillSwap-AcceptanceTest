Feature: Indicador de “Tutor en línea” 
Como aprendiz, quiero ver un indicador (ej. punto verde) que muestre qué tutores están online.
Scenario: Identificar tutor activo
Given que necesito ayuda urgente
When veo la lista de resultados
Then puedo identificar a los tutores en línea mediante un punto verde
Scenario: Estado cambia a inactivo
Given que un tutor estaba en línea
When cierra la aplicación o queda inactivo
Then el punto verde cambia a gris
