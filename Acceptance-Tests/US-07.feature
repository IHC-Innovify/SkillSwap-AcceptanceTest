Feature: Visualización del sello de verificación 
Como estudiante aprendiz, quiero ver un sello o icono de "Verificado" en los perfiles para sentirme seguro de que es un estudiante real.
Scenario: Ver sello en un perfil verificado
Given que estoy viendo el perfil de un tutor que fue aprobado por su coordinador,
When miro la información principal de su perfil,
Then veo un icono o sello de "Verificado" claramente visible junto a su nombre.
Scenario: Ausencia de sello en perfil no verificado (Negativo)
Given que un usuario recién registrado aún no es aprobado por el coordinador,
When su perfil es visible (hipotéticamente),
Then no se muestra ningún sello de verificación.
