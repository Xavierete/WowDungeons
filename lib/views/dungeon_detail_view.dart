// VISTA ALTERNATIVA: Pantalla de detalle de una mazmorra (versión alternativa)
// Este archivo contiene una implementación alternativa de la vista de detalle
// IMPORTANTE: Esta vista no se utiliza actualmente en la aplicación, pero se mantiene como referencia
import 'package:flutter/material.dart';
import '../models/dungeon_model.dart';
import '../utils/ui_helpers.dart';

// Clase principal de la vista de detalle alternativa
class DungeonDetailView extends StatelessWidget {
  final Dungeon dungeon; // Mazmorra a mostrar

  const DungeonDetailView({
    super.key,
    required this.dungeon,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(dungeon.title),
      ),
      // IMPORTANTE: Estructura alternativa con estilo diferente al de DetailView
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Título de la mazmorra
              Text(
                dungeon.title,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              // Descripción de la mazmorra
              Text(
                dungeon.description,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 30),
              // Sección de información
              const Text(
                'Información de la Mazmorra',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              // Tarjetas con información básica (estilo alternativo)
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
              // Sección de jefes
              const Text(
                'Jefes',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              // IMPORTANTE: Lista horizontal de jefes (estilo alternativo)
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
                          side: const BorderSide(
                            color: Colors.blue,
                            width: 2,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Imagen del jefe (versión simplificada)
                            Container(
                              height: 80,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.person,
                                  size: 50,
                                  color: Colors.grey.shade700,
                                ),
                              ),
                            ),
                            // Información del jefe
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    boss.name,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    boss.mechanics,
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
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