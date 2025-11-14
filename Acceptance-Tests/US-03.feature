Feature: Configuración de perfil de aprendiz 
Como estudiante aprendiz, quiero tener un perfil simple donde pueda listar las materias en las que necesito ayuda para que los tutores me encuentren.
Scenario: Añadir habilidades para aprender
Given que estoy en la sección de "Editar Perfil",
When me dirijo a "Temas de dominio", escribo el nombre de un curso y guardo,
Then el curso se añade a mi perfil.
Scenario: Eliminar una habilidad
Given que he añadido la materia "Cálculo I" a mi perfil,
When hago clic en el icono de eliminar junto a esa materia,
Then la materia "Cálculo I" desaparece de mi lista de habilidades.
