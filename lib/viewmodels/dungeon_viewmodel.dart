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
        title: 'Sima Ígnea',
        description: 'Una antigua prisión volcánica donde los elementales de fuego y los cultores del Martillo Crepuscular conspiran.',
        expansion: 'Classic',
        level: '13-18',
        location: 'Orgrimmar',
        image: 'lib/img/68555-sima-ignea.jpg',
        bosses: [
          Boss(
            name: 'Guardián Stilgiss',
            image: 'boss1.jpg',
            mechanics: 'Ataque de fuego, Invocación de elementales'
          ),
          Boss(
            name: 'Señor del Fuego Gordoth',
            image: 'boss2.jpg',
            mechanics: 'Lluvia de fuego, Explosión de lava'
          ),
        ],
      ),
      Dungeon(
        title: 'Cuevas de los Lamentos',
        description: 'Un laberinto de cavernas habitado por los Colmillos Oscuros y los espíritus de los druidas Colmillo Lunar.',
        expansion: 'Classic',
        level: '15-25',
        location: 'Bosque de Argénteos',
        image: 'lib/img/68555-sima-ignea.jpg',
        bosses: [
          Boss(
            name: 'Lord Cobrahn',
            image: 'boss3.jpg',
            mechanics: 'Veneno, Transformación serpiente'
          ),
          Boss(
            name: 'Lady Anacondra',
            image: 'boss4.jpg',
            mechanics: 'Dormir, Veneno persistente'
          ),
        ],
      ),
      Dungeon(
        title: 'Las Minas de la Muerte',
        description: 'Una antigua mina infestada de Defias y máquinas de guerra.',
        expansion: 'Classic',
        level: '18-23',
        location: 'Páramos de Poniente',
        image: 'lib/img/68555-sima-ignea.jpg',
        bosses: [
          Boss(
            name: 'Rhahk\'zor',
            image: 'boss5.jpg',
            mechanics: 'Golpe aturdidor, Daño masivo'
          ),
          Boss(
            name: 'Sneed',
            image: 'boss6.jpg',
            mechanics: 'Triturador mecánico, Bombas'
          ),
        ],
      ),
      Dungeon(
        title: 'Castillo de Colmillo Oscuro',
        description: 'La fortaleza del malvado archimago Arugal y sus worgen malditos.',
        expansion: 'Classic',
        level: '22-30',
        location: 'Bosque de Argénteos',
        image: 'lib/img/68555-sima-ignea.jpg',
        bosses: [
          Boss(
            name: 'Barón Sivermane',
            image: 'boss7.jpg',
            mechanics: 'Transformación worgen, Aullido aterrador'
          ),
          Boss(
            name: 'Archimago Arugal',
            image: 'boss8.jpg',
            mechanics: 'Teletransporte, Maldición worgen'
          ),
        ],
      ),
      Dungeon(
        title: 'Las Mazmorras',
        description: 'La prisión bajo Ventormenta, ahora tomada por criminales.',
        expansion: 'Classic',
        level: '22-30',
        location: 'Ventormenta',
        image: 'lib/img/68555-sima-ignea.jpg',
        bosses: [
          Boss(
            name: 'Bazil Thredd',
            image: 'boss9.jpg',
            mechanics: 'Golpes múltiples, Llamada a guardias'
          ),
          Boss(
            name: 'Dextren Ward',
            image: 'boss10.jpg',
            mechanics: 'Ejecutar, Desarmar'
          ),
        ],
      ),
      Dungeon(
        title: 'Monasterio Escarlata',
        description: 'El bastión fanático de la Cruzada Escarlata, dividido en cuatro alas.',
        expansion: 'Classic',
        level: '26-45',
        location: 'Tirisfal',
        image: 'lib/img/68555-sima-ignea.jpg',
        bosses: [
          Boss(
            name: 'Alto Inquisidor Whitemane',
            image: 'boss11.jpg',
            mechanics: 'Resurrección, Sanación divina'
          ),
          Boss(
            name: 'Herod el Matón',
            image: 'boss12.jpg',
            mechanics: 'Torbellino, Furia berserker'
          ),
        ],
      ),
      Dungeon(
        title: 'Zul\'Farrak',
        description: 'Una antigua ciudad trol en medio del desierto de Tanaris.',
        expansion: 'Classic',
        level: '44-54',
        location: 'Tanaris',
        image: 'lib/img/68555-sima-ignea.jpg',
        bosses: [
          Boss(
            name: 'Jefe Ukorz Cabellarena',
            image: 'boss13.jpg',
            mechanics: 'Invocación de basiliscos, Terremoto'
          ),
          Boss(
            name: 'Hidromante Velratha',
            image: 'boss14.jpg',
            mechanics: 'Control mental, Torrente de agua'
          ),
        ],
      ),
      Dungeon(
        title: 'Stratholme',
        description: 'La ciudad purificada por Arthas, ahora infestada de no-muertos.',
        expansion: 'Classic',
        level: '58-60',
        location: 'Tierras de la Peste del Este',
        image: 'lib/img/68555-sima-ignea.jpg',
        bosses: [
          Boss(
            name: 'Barón Osahendido',
            image: 'boss15.jpg',
            mechanics: 'Llamada de los muertos, Plaga mortal'
          ),
          Boss(
            name: 'Timmy el Cruel',
            image: 'boss16.jpg',
            mechanics: 'Rabia, Invocación de esqueletos'
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