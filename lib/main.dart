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
    // Datos de ejemplo para la mazmorra
    final Map<String, String> dungeonInfo = {
      'Expansión': 'Shadowlands',
      'Nivel': '50-60',
      'Jugadores': '5',
      'Ubicación': 'Oribos',
      'Dificultad': 'Normal, Heroica, Mítica',
      'Facción': 'Ambas',
    };
    
    // Lista de jefes de ejemplo
    final List<Map<String, dynamic>> bosses = [
      {
        'name': 'So\'leah',
        'image': 'boss1.jpg',
        'difficulty': 'Difícil',
        'mechanics': 'Daño de área, Invocaciones'
      },
      {
        'name': 'Hylbrande',
        'image': 'boss2.jpg',
        'difficulty': 'Moderado',
        'mechanics': 'Teletransporte, Escudos'
      },
      {
        'name': 'Timecap\'n Hooktail',
        'image': 'boss3.jpg',
        'difficulty': 'Fácil',
        'mechanics': 'Manipulación del tiempo'
      },
      {
        'name': 'Zo\'phex',
        'image': 'boss4.jpg',
        'difficulty': 'Moderado',
        'mechanics': 'Trampas, Daño directo'
      },
      {
        'name': 'Mailroom Mayhem',
        'image': 'boss5.jpg',
        'difficulty': 'Difícil',
        'mechanics': 'Múltiples objetivos'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Padding(
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
                'Información de la Mazmorra',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              // Lista vertical de información
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: dungeonInfo.length,
                itemBuilder: (context, index) {
                  String key = dungeonInfo.keys.elementAt(index);
                  String value = dungeonInfo[key]!;
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
              // Lista horizontal de jefes
              SizedBox(
                height: 180,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: bosses.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 160,
                      margin: const EdgeInsets.only(right: 16),
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(
                            color: _getDifficultyColor(bosses[index]['difficulty']),
                            width: 2,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
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
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    bosses[index]['name'],
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    'Dificultad: ${bosses[index]['difficulty']}',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: _getDifficultyColor(bosses[index]['difficulty']),
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    bosses[index]['mechanics'],
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
  
  // Método para obtener el icono según la clave de información
  IconData _getIconForKey(String key) {
    switch (key) {
      case 'Expansión':
        return Icons.extension;
      case 'Nivel':
        return Icons.trending_up;
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
  
  // Método para obtener el color según la dificultad
  Color _getDifficultyColor(String difficulty) {
    switch (difficulty) {
      case 'Fácil':
        return Colors.green;
      case 'Moderado':
        return Colors.orange;
      case 'Difícil':
        return Colors.red;
      default:
        return Colors.blue;
    }
  }
}
