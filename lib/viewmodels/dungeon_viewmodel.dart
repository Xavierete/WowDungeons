import 'package:flutter/material.dart';
import '../models/dungeon_model.dart';

class DungeonViewModel extends ChangeNotifier {
  List<Dungeon> _dungeons = [];
  
  List<Dungeon> get dungeons => _dungeons;
  
  DungeonViewModel() {
    _loadDungeons();
  }
  
  void _loadDungeons() {
    _dungeons = [
      Dungeon(
        title: 'Tazavesh',
        description: 'Tazavesh, el Mercado Velado es una mazmorra mítica introducida en el parche 9.1 de Shadowlands.',
        expansion: 'Shadowlands',
        level: '50-60',
        location: 'Oribos',
        bosses: [
          Boss(
            name: 'So\'leah',
            image: 'boss1.jpg',
            mechanics: 'Daño de área, Invocaciones'
          ),
          Boss(
            name: 'Hylbrande',
            image: 'boss2.jpg',
            mechanics: 'Teletransporte, Escudos'
          ),
          Boss(
            name: 'Timecap\'n Hooktail',
            image: 'boss3.jpg',
            mechanics: 'Manipulación del tiempo'
          ),
        ],
      ),
      Dungeon(
        title: 'Catacumbas Nefarias',
        description: 'Las Catacumbas Nefarias son una mazmorra ubicada en las Islas Dragón, donde los jugadores enfrentan a los esbirros de Sarkareth.',
        expansion: 'Dragonflight',
        level: '60-70',
        location: 'Islas Dragón',
        bosses: [
          Boss(
            name: 'Sarkareth',
            image: 'boss4.jpg',
            mechanics: 'Magia de sombras, Portales'
          ),
          Boss(
            name: 'Azureblade',
            image: 'boss5.jpg',
            mechanics: 'Ataque rápido, Teletransporte'
          ),
        ],
      ),
      Dungeon(
        title: 'Cumbre Negra',
        description: 'La Cumbre Negra es una mazmorra icónica ubicada en las Montañas Crestanegra, hogar de los poderosos orcos del Clan Roca Negra.',
        expansion: 'Cataclysm',
        level: '30-35',
        location: 'Montañas Crestanegra',
        bosses: [
          Boss(
            name: 'Ascendiente Correfuego',
            image: 'boss6.jpg',
            mechanics: 'Daño de fuego, Explosiones'
          ),
          Boss(
            name: 'Belleza',
            image: 'boss7.jpg',
            mechanics: 'Miedo, Invocación de cachorros'
          ),
        ],
      ),
      Dungeon(
        title: 'El Nexo Eterno',
        description: 'El Nexo Eterno se encuentra en Northrend y es el centro de poder de los dragones azules, liderados por Malygos.',
        expansion: 'Wrath of the Lich King',
        level: '25-30',
        location: 'Tundra Boreal',
        bosses: [
          Boss(
            name: 'Keristrasza',
            image: 'boss8.jpg',
            mechanics: 'Congelación, Daño de hielo'
          ),
          Boss(
            name: 'Anomalus',
            image: 'boss9.jpg',
            mechanics: 'Grietas dimensionales, Invocaciones'
          ),
        ],
      ),
      Dungeon(
        title: 'El Retorno a Karazhan',
        description: 'Una revisión de la icónica torre de Karazhan, hogar del arcimago Medivh, ahora con nuevos desafíos y jefes.',
        expansion: 'Legion',
        level: '45-50',
        location: 'Paso de la Montaña',
        bosses: [
          Boss(
            name: 'Moroes',
            image: 'boss10.jpg',
            mechanics: 'Sangrado, Invocación de sirvientes'
          ),
          Boss(
            name: 'Curator',
            image: 'boss11.jpg',
            mechanics: 'Sobrecarga, Invocación de chispas'
          ),
        ],
      ),
      Dungeon(
        title: 'Templo Oscuro',
        description: 'El Templo Oscuro es la fortaleza de Illidan Cazador de Demonios, ubicada en el Valle Sombraluna de Terrallende.',
        expansion: 'The Burning Crusade',
        level: '20-30',
        location: 'Valle Sombraluna',
        bosses: [
          Boss(
            name: 'Gran Maestro Vorpil',
            image: 'boss12.jpg',
            mechanics: 'Teletransporte, Invocación de vacío'
          ),
          Boss(
            name: 'Murmur',
            image: 'boss13.jpg',
            mechanics: 'Explosión sónica, Silencio'
          ),
        ],
      ),
    ];
  }
  
  Dungeon getDungeonByTitle(String title) {
    try {
      return _dungeons.firstWhere(
        (dungeon) => dungeon.title == title,
        orElse: () => throw Exception('Mazmorra no encontrada'),
      );
    } catch (e) {
      // Si no se encuentra la mazmorra, devolvemos la primera mazmorra de la lista
      if (_dungeons.isNotEmpty) {
        return _dungeons.first;
      }
      // Si no hay mazmorras, lanzamos una excepción
      throw Exception('No hay mazmorras disponibles');
    }
  }
} 