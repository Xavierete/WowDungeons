import 'package:flutter/material.dart';

// Método para obtener el icono según la clave de información
IconData getIconForKey(String key) {
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
Color getDifficultyColor(String difficulty) {
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