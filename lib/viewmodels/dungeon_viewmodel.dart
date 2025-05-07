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
            image: 'lib/img/bossesimg/919264-warder-stilgiss.jpg',
            mechanics: 'Ataque de fuego, Invocación de elementales'
          ),
          Boss(
            name: 'Señor del Fuego Gordoth',
            image: 'lib/img/bossesimg/762802-senor-del-fuego.jpg',
            mechanics: 'Lluvia de fuego, Explosión de lava'
          ),
          Boss(
            name: 'Capitán de la Guardia Solakar',
            image: 'lib/img/bossesimg/31595-capitan-de-la-guardia-cragtar.jpg',
            mechanics: 'Llamada de refuerzos, Escudo de fuego'
          ),
        ],
      ),
      Dungeon(
        title: 'Cuevas de los Lamentos',
        description: 'Un laberinto de cavernas habitado por los Colmillos Oscuros y los espíritus de los druidas Colmillo Lunar.',
        expansion: 'Classic',
        level: '15-25',
        location: 'Bosque de Argénteos',
        image: 'lib/img/86186-cuevas-de-los-lamentos-cave-entrance-spoooky.jpg',
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
          Boss(
            name: 'Kresh',
            image: 'boss5.jpg',
            mechanics: 'Mordisco venenoso, Cola de escorpión'
          ),
          Boss(
            name: 'Lord Pythas',
            image: 'boss6.jpg',
            mechanics: 'Escupir veneno, Envenenar'
          ),
        ],
      ),
      Dungeon(
        title: 'Las Minas de la Muerte',
        description: 'Una antigua mina infestada de Defias y máquinas de guerra.',
        expansion: 'Classic',
        level: '18-23',
        location: 'Páramos de Poniente',
        image: 'lib/img/411127-las-minas-de-la-muerte-entrance-to-the-deadmines-instance.jpg',
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
          Boss(
            name: 'Gilnid',
            image: 'boss7.jpg',
            mechanics: 'Lanzar botella, Explosión de gas'
          ),
          Boss(
            name: 'Capitán Greenskin',
            image: 'boss8.jpg',
            mechanics: 'Golpe de espada, Llamada de piratas'
          ),
          Boss(
            name: 'Edwin VanCleef',
            image: 'boss9.jpg',
            mechanics: 'Golpes múltiples, Defias Elite'
          ),
        ],
      ),
      Dungeon(
        title: 'Castillo de Colmillo Oscuro',
        description: 'La fortaleza del malvado archimago Arugal y sus worgen malditos.',
        expansion: 'Classic',
        level: '22-30',
        location: 'Bosque de Argénteos',
        image: 'lib/img/f9b7ca722b2172cb866481f85e32b4e8.jpg',
        bosses: [
          Boss(
            name: 'Barón Sivermane',
            image: 'boss7.jpg',
            mechanics: 'Transformación worgen, Aullido aterrador'
          ),
          Boss(
            name: 'Comandante Springvale',
            image: 'boss8.jpg',
            mechanics: 'Bendición de protección, Llamada de guardias'
          ),
          Boss(
            name: 'Odo el Vigilante Ciego',
            image: 'boss9.jpg',
            mechanics: 'Golpe ciego, Aullido de guerra'
          ),
          Boss(
            name: 'Archimago Arugal',
            image: 'boss10.jpg',
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
        image: 'lib/img/48208-las-mazmorras-entrance-in-stormwind.jpg',
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
          Boss(
            name: 'Kam Deepfury',
            image: 'boss11.jpg',
            mechanics: 'Golpe de escudo, Llamada de prisioneros'
          ),
          Boss(
            name: 'Bruegal Puño de Hierro',
            image: 'boss12.jpg',
            mechanics: 'Golpe aturdidor, Furia'
          ),
        ],
      ),
      Dungeon(
        title: 'Monasterio Escarlata',
        description: 'El bastión fanático de la Cruzada Escarlata, dividido en cuatro alas.',
        expansion: 'Classic',
        level: '26-45',
        location: 'Tirisfal',
        image: 'lib/img/315607-monasterio-escarlata.jpg',
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
          Boss(
            name: 'Arzobispo Benedictus',
            image: 'boss13.jpg',
            mechanics: 'Bendición de protección, Llamada de cruzados'
          ),
          Boss(
            name: 'Interrogador Vishas',
            image: 'boss14.jpg',
            mechanics: 'Tortura, Llamada de inquisidores'
          ),
        ],
      ),
      Dungeon(
        title: 'Zul\'Farrak',
        description: 'Una antigua ciudad trol en medio del desierto de Tanaris.',
        expansion: 'Classic',
        level: '44-54',
        location: 'Tanaris',
        image: 'lib/img/65543-zulfarrak.jpg',
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
          Boss(
            name: 'Antu\'sul',
            image: 'boss15.jpg',
            mechanics: 'Invocación de serpientes, Veneno'
          ),
          Boss(
            name: 'Zerillis',
            image: 'boss16.jpg',
            mechanics: 'Vuelo, Llamada de murciélagos'
          ),
        ],
      ),
      Dungeon(
        title: 'Stratholme',
        description: 'La ciudad purificada por Arthas, ahora infestada de no-muertos.',
        expansion: 'Classic',
        level: '58-60',
        location: 'Tierras de la Peste del Este',
        image: 'lib/img/934237-stratholme.jpg',
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
          Boss(
            name: 'Maleki el Pálido',
            image: 'boss17.jpg',
            mechanics: 'Drenar vida, Maldición de debilidad'
          ),
          Boss(
            name: 'Nerub\'enkan',
            image: 'boss18.jpg',
            mechanics: 'Enredar, Veneno de araña'
          ),
          Boss(
            name: 'Barón Rivendare',
            image: 'boss19.jpg',
            mechanics: 'Golpe mortal, Invocación de esqueletos'
          ),
        ],
      ),
    ];
  }
  
  Dungeon getDungeonByTitle(String title) {
    try {
      final dungeon = _dungeons.firstWhere(
        (dungeon) => dungeon.title == title,
        orElse: () => throw Exception('Mazmorra no encontrada'),
      );
      print('Mazmorra encontrada: ${dungeon.title} con imagen: ${dungeon.image}');
      return dungeon;
    } catch (e) {
      print('Error al buscar mazmorra: $e');
      throw Exception('Mazmorra no encontrada: $title');
    }
  }
} 