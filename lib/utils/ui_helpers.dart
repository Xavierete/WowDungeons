// UTILIDADES UI: Funciones auxiliares para la interfaz de usuario
// Este archivo contiene funciones de ayuda para elementos visuales reutilizables
import 'package:flutter/material.dart';

// IMPORTANTE: Método para obtener el icono según la clave de información
// Centraliza la lógica de asignación de iconos para mantener consistencia en la UI
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

// IMPORTANTE: Método para obtener el color según la dificultad
// Permite mostrar visualmente el nivel de dificultad con colores intuitivos
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