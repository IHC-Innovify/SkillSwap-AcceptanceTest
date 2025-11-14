Feature: Configurar perfil de tutor (HU-13)
Como estudiante tutor, quiero configurar mi perfil añadiendo las materias que domino en una sección de "Habilidades para Enseñar".
Scenario: Añadir habilidades para enseñar
Given que soy un usuario verificado y quiero ser tutor,
When edito mi perfil y añado "Álgebra Lineal" a mis "Habilidades para Enseñar",
Then mi perfil se actualiza y ahora soy visible en los resultados de búsqueda para esa materia.
Scenario: No aparecer en búsquedas sin habilidades (Negativo)
Given que no he añadido ninguna "Habilidad para Enseñar" a mi perfil,
When un aprendiz busca una materia que yo domino,
Then mi perfil no aparece en los resultados de búsqueda.
