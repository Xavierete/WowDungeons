class Dungeon {
  final String title;
  final String description;
  final Map<String, String> info;
  final List<Boss> bosses;

  Dungeon({
    required this.title,
    required this.description,
    required this.info,
    required this.bosses,
  });
}

class Boss {
  final String name;
  final String image;
  final String difficulty;
  final String mechanics;

  Boss({
    required this.name,
    required this.image,
    required this.difficulty,
    required this.mechanics,
  });
} 