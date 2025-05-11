// VISTA: Pantalla principal que muestra la lista de mazmorras
// Este archivo contiene la implementación de la pantalla de inicio con el grid de mazmorras
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/dungeon_viewmodel.dart';
import 'detail_view.dart';

// IMPORTANTE: Clase principal de la vista de inicio
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    // Acceso al viewmodel a través de Provider
    final viewModel = Provider.of<DungeonViewModel>(context);
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Mazmorras de Azeroth',
          style: theme.textTheme.displayMedium,
        ),
      ),
      // IMPORTANTE: Grid que muestra las mazmorras disponibles
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 0.9, //Esto es para que las tarjetas sean más altas
          ),
          itemCount: viewModel.dungeons.length,
          itemBuilder: (context, index) {
            final dungeon = viewModel.dungeons[index];
            // IMPORTANTE: Cada tarjeta es clickeable y navega al detalle
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailView(
                      title: dungeon.title,
                    ),
                  ),
                );
              },
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Imagen de la mazmorra
                    Expanded(
                      flex: 4,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(10),
                        ),
                        child: Image.asset(
                          dungeon.image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // Título de la mazmorra
                    Expanded(
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(
                          color: theme.colorScheme.surface,
                          borderRadius: const BorderRadius.vertical(
                            bottom: Radius.circular(10),
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 12,
                        ),
                        child: Center(
                          child: Text(
                            dungeon.title,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.bodyLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
} 