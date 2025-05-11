// MODELO DE DATOS: Define la estructura de datos para las mazmorras
// Este archivo contiene las clases principales que representan las entidades del juego

// IMPORTANTE: Clase principal que define la estructura de una mazmorra
class Dungeon {
  final String title;       // Título de la mazmorra
  final String description; // Descripción detallada
  final String expansion;   // Expansión a la que pertenece
  final String level;       // Rango de nivel recomendado
  final String location;    // Ubicación en el mundo de Azeroth
  final String image;       // Ruta a la imagen de la mazmorra
  final List<Boss> bosses;  // Lista de jefes de la mazmorra

  // Constructor que requiere todos los campos
  Dungeon({
    required this.title,
    required this.description,
    required this.expansion,
    required this.level,
    required this.location,
    required this.image,
    required this.bosses,
  });
}

// IMPORTANTE: Clase que define la estructura de un jefe de mazmorra
class Boss {
  final String name;      // Nombre del jefe
  final String image;     // Ruta a la imagen del jefe
  final String mechanics; // Descripción de las mecánicas principales

  // Constructor que requiere todos los campos
  Boss({
    required this.name,
    required this.image,
    required this.mechanics,
  });
} 