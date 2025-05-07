class Dungeon {
  final String title;
  final String description;
  final String expansion;
  final String level;
  final String location;
  final List<Boss> bosses;

  Dungeon({
    required this.title,
    required this.description,
    required this.expansion,
    required this.level,
    required this.location,
    required this.bosses,
  });
}

class Boss {
  final String name;
  final String image;
  final String mechanics;

  Boss({
    required this.name,
    required this.image,
    required this.mechanics,
  });
} 