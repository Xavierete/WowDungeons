import 'package:flutter/material.dart';
import '../models/dungeon_model.dart';

class DungeonViewModel extends ChangeNotifier {
  List<Dungeon> _dungeons = [];
  
  List<Dungeon> get dungeons => _dungeons;
  
  DungeonViewModel() {
    _loadDungeons();
  }
  
  void _loadDungeons() {
    // Datos de ejemplo para las mazmorras
    _dungeons = [
      Dungeon(
        title: 'Tazavesh',
        description: 'Tazavesh, el Mercado Velado es una mazmorra mítica introducida en el parche 9.1 de Shadowlands.',
        info: {
          'Expansión': 'Shadowlands',
          'Nivel': '50-60',
          'Jugadores': '5',
          'Ubicación': 'Oribos',
          'Dificultad': 'Normal, Heroica, Mítica',
          'Facción': 'Ambas',
        },
        bosses: [
          Boss(
            name: 'So\'leah',
            image: 'boss1.jpg',
            difficulty: 'Difícil',
            mechanics: 'Daño de área, Invocaciones'
          ),
          Boss(
            name: 'Hylbrande',
            image: 'boss2.jpg',
            difficulty: 'Moderado',
            mechanics: 'Teletransporte, Escudos'
          ),
          Boss(
            name: 'Timecap\'n Hooktail',
            image: 'boss3.jpg',
            difficulty: 'Fácil',
            mechanics: 'Manipulación del tiempo'
          ),
        ],
      ),
      Dungeon(
        title: 'Catacumbas Nefarias',
        description: 'Las Catacumbas Nefarias son una mazmorra ubicada en las Islas Dragón, donde los jugadores enfrentan a los esbirros de Sarkareth.',
        info: {
          'Expansión': 'Dragonflight',
          'Nivel': '60-70',
          'Jugadores': '5',
          'Ubicación': 'Islas Dragón',
          'Dificultad': 'Normal, Heroica, Mítica',
          'Facción': 'Ambas',
        },
        bosses: [
          Boss(
            name: 'Sarkareth',
            image: 'boss4.jpg',
            difficulty: 'Difícil',
            mechanics: 'Magia de sombras, Portales'
          ),
          Boss(
            name: 'Azureblade',
            image: 'boss5.jpg',
            difficulty: 'Moderado',
            mechanics: 'Ataque rápido, Teletransporte'
          ),
        ],
      ),
      Dungeon(
        title: 'Cumbre Negra',
        description: 'La Cumbre Negra es una mazmorra icónica ubicada en las Montañas Crestanegra, hogar de los poderosos orcos del Clan Roca Negra.',
        info: {
          'Expansión': 'Cataclysm',
          'Nivel': '30-35',
          'Jugadores': '5',
          'Ubicación': 'Montañas Crestanegra',
          'Dificultad': 'Normal, Heroica',
          'Facción': 'Ambas',
        },
        bosses: [
          Boss(
            name: 'Ascendiente Correfuego',
            image: 'boss6.jpg',
            difficulty: 'Fácil',
            mechanics: 'Daño de fuego, Explosiones'
          ),
          Boss(
            name: 'Belleza',
            image: 'boss7.jpg',
            difficulty: 'Moderado',
            mechanics: 'Miedo, Invocación de cachorros'
          ),
        ],
      ),
      Dungeon(
        title: 'El Nexo Eterno',
        description: 'El Nexo Eterno se encuentra en Northrend y es el centro de poder de los dragones azules, liderados por Malygos.',
        info: {
          'Expansión': 'Wrath of the Lich King',
          'Nivel': '25-30',
          'Jugadores': '5',
          'Ubicación': 'Tundra Boreal',
          'Dificultad': 'Normal, Heroica',
          'Facción': 'Ambas',
        },
        bosses: [
          Boss(
            name: 'Keristrasza',
            image: 'boss8.jpg',
            difficulty: 'Moderado',
            mechanics: 'Congelación, Daño de hielo'
          ),
          Boss(
            name: 'Anomalus',
            image: 'boss9.jpg',
            difficulty: 'Fácil',
            mechanics: 'Grietas dimensionales, Invocaciones'
          ),
        ],
      ),
      Dungeon(
        title: 'El Retorno a Karazhan',
        description: 'Una revisión de la icónica torre de Karazhan, hogar del arcimago Medivh, ahora con nuevos desafíos y jefes.',
        info: {
          'Expansión': 'Legion',
          'Nivel': '45-50',
          'Jugadores': '5',
          'Ubicación': 'Paso de la Montaña',
          'Dificultad': 'Mítica',
          'Facción': 'Ambas',
        },
        bosses: [
          Boss(
            name: 'Moroes',
            image: 'boss10.jpg',
            difficulty: 'Difícil',
            mechanics: 'Sangrado, Invocación de sirvientes'
          ),
          Boss(
            name: 'Curator',
            image: 'boss11.jpg',
            difficulty: 'Moderado',
            mechanics: 'Sobrecarga, Invocación de chispas'
          ),
        ],
      ),
      Dungeon(
        title: 'Templo Oscuro',
        description: 'El Templo Oscuro es la fortaleza de Illidan Cazador de Demonios, ubicada en el Valle Sombraluna de Terrallende.',
        info: {
          'Expansión': 'The Burning Crusade',
          'Nivel': '20-30',
          'Jugadores': '5',
          'Ubicación': 'Valle Sombraluna',
          'Dificultad': 'Normal, Heroica',
          'Facción': 'Ambas',
        },
        bosses: [
          Boss(
            name: 'Gran Maestro Vorpil',
            image: 'boss12.jpg',
            difficulty: 'Moderado',
            mechanics: 'Teletransporte, Invocación de vacío'
          ),
          Boss(
            name: 'Murmur',
            image: 'boss13.jpg',
            difficulty: 'Difícil',
            mechanics: 'Explosión sónica, Silencio'
          ),
        ],
      ),
    ];
  }
  
  // Método para obtener una mazmorra por su título
  Dungeon getDungeonByTitle(String title) {
    return _dungeons.firstWhere(
      (dungeon) => dungeon.title == title,
      orElse: () => _dungeons[0],
    );
  }
} 