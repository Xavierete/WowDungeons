import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WowDungeons',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Lista de datos para los items del grid
    final List<Map<String, String>> dungeons = [
      {
        'title': 'Tazavesh',
        'description': 'Tazavesh, el Mercado Velado es una mazmorra mítica introducida en el parche 9.1 de Shadowlands.'
      },
      {
        'title': 'Catacumbas Nefarias',
        'description': 'Las Catacumbas Nefarias son una mazmorra ubicada en las Islas Dragón, donde los jugadores enfrentan a los esbirros de Sarkareth.'
      },
      {
        'title': 'Cumbre Negra',
        'description': 'La Cumbre Negra es una mazmorra icónica ubicada en las Montañas Crestanegra, hogar de los poderosos orcos del Clan Roca Negra.'
      },
      {
        'title': 'El Nexo Eterno',
        'description': 'El Nexo Eterno se encuentra en Northrend y es el centro de poder de los dragones azules, liderados por Malygos.'
      },
      {
        'title': 'El Retorno a Karazhan',
        'description': 'Una revisión de la icónica torre de Karazhan, hogar del arcimago Medivh, ahora con nuevos desafíos y jefes.'
      },
      {
        'title': 'Templo Oscuro',
        'description': 'El Templo Oscuro es la fortaleza de Illidan Cazador de Demonios, ubicada en el Valle Sombraluna de Terrallende.'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('WowDungeons'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              'Hello World',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 1.5,
                ),
                itemCount: dungeons.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(
                            title: dungeons[index]['title']!,
                            description: dungeons[index]['description']!,
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
                          dungeons[index]['title']!,
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Página de detalle para cada mazmorra
class DetailPage extends StatelessWidget {
  final String title;
  final String description;

  const DetailPage({
    super.key, 
    required this.title, 
    required this.description
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              description,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'Jefes:',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: 3, // Ejemplo con 3 jefes
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      leading: const Icon(Icons.psychology, size: 40),
                      title: Text('Jefe ${index + 1}'),
                      subtitle: Text('Dificultad: ${_getDifficulty(index)}'),
                      trailing: const Icon(Icons.arrow_forward_ios),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
  
  String _getDifficulty(int index) {
    List<String> difficulties = ['Fácil', 'Moderado', 'Difícil'];
    return difficulties[index % difficulties.length];
  }
}
