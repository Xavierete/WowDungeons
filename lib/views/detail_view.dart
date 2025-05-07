import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/dungeon_viewmodel.dart';
import 'bosses_view.dart';

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
              Card(
                margin: const EdgeInsets.symmetric(vertical: 4),
                child: ListTile(
                  leading: const Icon(Icons.extension, color: Colors.blue),
                  title: const Text('Expansión'),
                  trailing: Text(
                    dungeon.expansion,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
              Card(
                margin: const EdgeInsets.symmetric(vertical: 4),
                child: ListTile(
                  leading: const Icon(Icons.star, color: Colors.blue),
                  title: const Text('Nivel'),
                  trailing: Text(
                    dungeon.level,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
              Card(
                margin: const EdgeInsets.symmetric(vertical: 4),
                child: ListTile(
                  leading: const Icon(Icons.location_on, color: Colors.blue),
                  title: const Text('Ubicación'),
                  trailing: Text(
                    dungeon.location,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BossesView(
                        title: dungeon.title,
                        bosses: dungeon.bosses,
                      ),
                    ),
                  );
                },
                child: const Text('Ver Jefes'),
              ),
            ],
          ),
        ),
      ),
    );
  }
} 