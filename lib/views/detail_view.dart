import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/dungeon_viewmodel.dart';
import '../models/dungeon_model.dart';

class DetailView extends StatelessWidget {
  final String title;

  const DetailView({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<DungeonViewModel>(context);
    final dungeon = viewModel.getDungeonByTitle(title);

    return Scaffold(
      appBar: AppBar(
        title: Text(dungeon.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                dungeon.title,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                dungeon.description,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'Información de la Mazmorra',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: dungeon.info.length,
                itemBuilder: (context, index) {
                  String key = dungeon.info.keys.elementAt(index);
                  String value = dungeon.info[key]!;
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 4),
                    child: ListTile(
                      leading: Icon(
                        _getIconForKey(key),
                        color: Colors.blue.shade700,
                      ),
                      title: Text(key),
                      trailing: Text(
                        value,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue.shade800,
                        ),
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 30),
              const Text(
                'Jefes',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: dungeon.bosses.length,
                itemBuilder: (context, index) {
                  final boss = dungeon.bosses[index];
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      title: Text(boss.name),
                      subtitle: Text(boss.mechanics),
                      trailing: Chip(
                        label: Text(boss.difficulty),
                        backgroundColor: _getDifficultyColor(boss.difficulty),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  IconData _getIconForKey(String key) {
    switch (key) {
      case 'Expansión':
        return Icons.extension;
      case 'Nivel':
        return Icons.level;
      case 'Jugadores':
        return Icons.group;
      case 'Ubicación':
        return Icons.location_on;
      case 'Dificultad':
        return Icons.warning;
      case 'Facción':
        return Icons.flag;
      default:
        return Icons.info;
    }
  }

  Color _getDifficultyColor(String difficulty) {
    switch (difficulty) {
      case 'Fácil':
        return Colors.green.shade100;
      case 'Moderado':
        return Colors.orange.shade100;
      case 'Difícil':
        return Colors.red.shade100;
      default:
        return Colors.grey.shade100;
    }
  }
} 