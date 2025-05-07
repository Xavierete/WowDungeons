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
            image: 'lib/img/bossesimg/51334-lord-cobrahn.jpg',
            mechanics: 'Veneno, Transformación serpiente'
          ),
          Boss(
            name: 'Lady Anacondra',
            image: 'lib/img/bossesimg/51331-lady-anacondra.jpg',
            mechanics: 'Dormir, Veneno persistente'
          ),
          Boss(
            name: 'Kresh',
            image: 'lib/img/bossesimg/51329-kresh.jpg',
            mechanics: 'Mordisco venenoso, Cola de escorpión'
          ),
          Boss(
            name: 'Lord Pythas',
            image: 'lib/img/bossesimg/82792-lord-pythas.jpg',
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
            image: 'lib/img/bossesimg/17586-rhahkzor.jpg',
            mechanics: 'Golpe aturdidor, Daño masivo'
          ),
          Boss(
            name: 'Sneed',
            image: 'lib/img/bossesimg/52611-trituradora-de-sneed.jpg',
            mechanics: 'Triturador mecánico, Bombas'
          ),
          Boss(
            name: 'Gilnid',
            image: 'lib/img/bossesimg/52312-gilnid.jpg',
            mechanics: 'Lanzar botella, Explosión de gas'
          ),
          Boss(
            name: 'Capitán Greenskin',
            image: 'lib/img/bossesimg/60536.jpg',
            mechanics: 'Golpe de espada, Llamada de piratas'
          ),
          Boss(
            name: 'Edwin VanCleef',
            image: 'lib/img/bossesimg/954850-vancleef.jpg',
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
            image: 'lib/img/bossesimg/300973-baron-ashbury.jpg',
            mechanics: 'Transformación worgen, Aullido aterrador'
          ),
          Boss(
            name: 'Comandante Springvale',
            image: 'lib/img/bossesimg/7613.jpg',
            mechanics: 'Bendición de protección, Llamada de guardias'
          ),
          Boss(
            name: 'Odo el Vigilante Ciego',
            image: 'lib/img/bossesimg/378248-odo-el-vigia-ciego-odo-the-blindwatchers-ghostly-form-in-5-3.jpg',
            mechanics: 'Golpe ciego, Aullido de guerra'
          ),
          Boss(
            name: 'Archimago Arugal',
            image: 'lib/img/bossesimg/171122-archimago-arugal-archmage-arugal-the-main-boss-of-shadowfang-keep.jpg',
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
            image: 'lib/img/bossesimg/156342-bazil-thredd.jpg',
            mechanics: 'Golpes múltiples, Llamada a guardias'
          ),
          Boss(
            name: 'Dextren Ward',
            image: 'lib/img/bossesimg/171230-dextren-ward-dextren-ward-was-caught-selling-bodies.jpg',
            mechanics: 'Ejecutar, Desarmar'
          ),
          Boss(
            name: 'Kam Deepfury',
            image: 'lib/img/bossesimg/77757-kam-deepfury.jpg',
            mechanics: 'Golpe de escudo, Llamada de prisioneros'
          ),
          Boss(
            name: 'Bruegal Puño de Hierro',
            image: 'lib/img/bossesimg/171215-bruegal-nudoferro-bruegal-ironknuckle-the-only-rare-mob-in-the-stockades-and-he.jpg',
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
            image: 'lib/img/bossesimg/937047-alta-inquisidora-melenablanca.jpg',
            mechanics: 'Resurrección, Sanación divina'
          ),
          Boss(
            name: 'Herod el Matón',
            image: 'lib/img/bossesimg/121369-herod.jpg',
            mechanics: 'Torbellino, Furia berserker'
          ),
          Boss(
            name: 'Arzobispo Benedictus',
            image: 'lib/img/bossesimg/954850-vancleef.jpg',
            mechanics: 'Bendición de protección, Llamada de cruzados'
          ),
          Boss(
            name: 'Interrogador Vishas',
            image: 'lib/img/bossesimg/76980-interrogador-vishas.jpg',
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
            image: 'lib/img/bossesimg/461057-jefe-ukorz-cabellarena.jpg',
            mechanics: 'Invocación de basiliscos, Terremoto'
          ),
          Boss(
            name: 'Hidromante Velratha',
            image: 'lib/img/bossesimg/1141827-hidromantica-velratha.jpg',
            mechanics: 'Control mental, Torrente de agua'
          ),
          Boss(
            name: 'Antu\'sul',
            image: 'lib/img/bossesimg/48996-antusul.jpg',
            mechanics: 'Invocación de serpientes, Veneno'
          ),
          Boss(
            name: 'Zerillis',
            image: 'lib/img/bossesimg/293320-zerillis.jpg',
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
            image: 'lib/img/bossesimg/79366-baron-osahendido.jpg',
            mechanics: 'Llamada de los muertos, Plaga mortal'
          ),
          Boss(
            name: 'Timmy el Cruel',
            image: 'lib/img/bossesimg/19000-timmy-el-cruel.jpg',
            mechanics: 'Rabia, Invocación de esqueletos'
          ),
          Boss(
            name: 'Maleki el Pálido',
            image: 'lib/img/bossesimg/67632-maleki-el-palido.jpg',
            mechanics: 'Drenar vida, Maldición de debilidad'
          ),
          Boss(
            name: 'Nerub\'enkan',
            image: 'lib/img/bossesimg/43704-nerubenkan.jpg',
            mechanics: 'Enredar, Veneno de araña'
          ),
          Boss(
            name: 'Barón Rivendare',
            image: 'lib/img/bossesimg/164325-baron-osahendido.jpg',
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