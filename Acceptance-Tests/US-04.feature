Feature: Búsqueda de tutores (HU-04)
Como estudiante aprendiz, quiero ver un dashboard principal al iniciar sesión que me muestre una barra de búsqueda para encontrar un tema, curso o tutor fácilmente.
Scenario: Búsqueda de cursos o temas
Given que necesito ayuda en "Cálculo 2",
When escribo "Cálculo 2" en la barra de búsqueda y presiono Enter,
Then la plataforma me muestra una lista de tutores que enseñan esa materia.
Scenario: Búsqueda de profesores
Given que quiero volver a reunirme con "José Olaya",
When escribo "José Olaya" en la barra de búsqueda y presiono Enter,
Then la plataforma me muestra una lista de tutores que tengan ese nombre.
Scenario: Búsqueda sin resultados
Given que busco una materia muy específica que nadie ofrece,
When realizo la búsqueda,
Then el sistema me muestra un mensaje amigable como "No se encontraron tutores. Intenta con otra materia".
