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
    final theme = Theme.of(context);
    Dungeon dungeon;
    
    try {
      dungeon = viewModel.getDungeonByTitle(title);
    } catch (e) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            'Error',
            style: theme.textTheme.displayMedium,
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.error_outline,
                size: 64,
                color: theme.colorScheme.secondary,
              ),
              const SizedBox(height: 16),
              Text(
                e.toString(),
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyLarge?.copyWith(
                  color: theme.colorScheme.secondary,
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Volver'),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          dungeon.title,
          style: theme.textTheme.displayMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  dungeon.image,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                dungeon.title,
                style: theme.textTheme.displayLarge,
              ),
              const SizedBox(height: 20),
              Text(
                dungeon.description,
                style: theme.textTheme.bodyLarge,
              ),
              const SizedBox(height: 30),
              Text(
                'Información de la Mazmorra',
                style: theme.textTheme.displayMedium,
              ),
              const SizedBox(height: 10),
              Card(
                margin: const EdgeInsets.symmetric(vertical: 4),
                child: ListTile(
                  leading: Icon(Icons.extension, color: theme.colorScheme.primary),
                  title: Text(
                    'Expansión',
                    style: theme.textTheme.bodyLarge,
                  ),
                  trailing: Text(
                    dungeon.expansion,
                    style: theme.textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: theme.colorScheme.primary,
                    ),
                  ),
                ),
              ),
              Card(
                margin: const EdgeInsets.symmetric(vertical: 4),
                child: ListTile(
                  leading: Icon(Icons.star, color: theme.colorScheme.primary),
                  title: Text(
                    'Nivel',
                    style: theme.textTheme.bodyLarge,
                  ),
                  trailing: Text(
                    dungeon.level,
                    style: theme.textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: theme.colorScheme.primary,
                    ),
                  ),
                ),
              ),
              Card(
                margin: const EdgeInsets.symmetric(vertical: 4),
                child: ListTile(
                  leading: Icon(Icons.location_on, color: theme.colorScheme.primary),
                  title: Text(
                    'Ubicación',
                    style: theme.textTheme.bodyLarge,
                  ),
                  trailing: Text(
                    dungeon.location,
                    style: theme.textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: theme.colorScheme.primary,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Text(
                'Jefes',
                style: theme.textTheme.displayMedium,
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 180,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: dungeon.bosses.length,
                  itemBuilder: (context, index) {
                    final boss = dungeon.bosses[index];
                    return Container(
                      width: 160,
                      margin: const EdgeInsets.only(right: 16),
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(
                            color: theme.colorScheme.primary,
                            width: 2,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 80,
                              decoration: BoxDecoration(
                                color: theme.colorScheme.surface,
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.person,
                                  size: 50,
                                  color: theme.colorScheme.primary,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    boss.name,
                                    style: theme.textTheme.bodyLarge?.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    boss.mechanics,
                                    style: theme.textTheme.bodyMedium?.copyWith(
                                      color: theme.colorScheme.primary.withOpacity(0.7),
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
} 