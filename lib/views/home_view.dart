import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/dungeon_viewmodel.dart';
import '../views/dungeon_detail_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WowDungeons'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              'Mazmorras de World of Warcraft',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Consumer<DungeonViewModel>(
                builder: (context, viewModel, child) {
                  return GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      childAspectRatio: 1.5,
                    ),
                    itemCount: viewModel.dungeons.length,
                    itemBuilder: (context, index) {
                      final dungeon = viewModel.dungeons[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DungeonDetailView(
                                dungeon: dungeon,
                              ),
                            ),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.blue.shade800,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.blue.shade100,
                          ),
                          child: Center(
                            child: Text(
                              dungeon.title,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
} 