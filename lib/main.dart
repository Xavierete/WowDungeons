// ARCHIVO PRINCIPAL: Punto de entrada de la aplicación
// Este archivo configura el tema y la estructura básica de la app
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'viewmodels/dungeon_viewmodel.dart';
import 'views/home_view.dart';

// IMPORTANTE: Punto de entrada de la aplicación
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // IMPORTANTE: Configuración del Provider para gestión de estado
    return ChangeNotifierProvider(
      create: (context) => DungeonViewModel(),
      child: MaterialApp(
        title: 'WowDungeons',
        // IMPORTANTE: Tema personalizado con estilo medieval/WoW
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.dark(
            primary: const Color(0xFFC8A165), // Dorado medieval
            secondary: const Color(0xFF8B0000), // Rojo oscuro
            tertiary: const Color(0xFF2F4F4F), // Verde oscuro medieval
            background: const Color(0xFF1A1A1A), // Fondo oscuro
            surface: const Color(0xFF2D2D2D), // Superficie oscura
            onPrimary: Colors.black,
            onSecondary: Colors.white,
            onBackground: const Color(0xFFC8A165), // Texto dorado
            onSurface: const Color(0xFFC8A165), // Texto dorado
          ),
          scaffoldBackgroundColor: const Color(0xFF1A1A1A),
          appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xFF2D2D2D),
            foregroundColor: Color(0xFFC8A165),
            elevation: 0,
          ),
          cardTheme: CardTheme(
            color: const Color(0xFF2D2D2D),
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: const BorderSide(
                color: Color(0xFFC8A165),
                width: 1,
              ),
            ),
          ),
          // IMPORTANTE: Configuración de fuentes con estilo medieval
          textTheme: const TextTheme(
            displayLarge: TextStyle(
              color: Color(0xFFC8A165),
              fontSize: 32,
              fontWeight: FontWeight.bold,
              fontFamily: 'Cinzel', // Fuente medieval
            ),
            displayMedium: TextStyle(
              color: Color(0xFFC8A165),
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: 'Cinzel',
            ),
            bodyLarge: TextStyle(
              color: Color(0xFFC8A165),
              fontSize: 16,
              fontFamily: 'Cinzel',
            ),
            bodyMedium: TextStyle(
              color: Color(0xFFC8A165),
              fontSize: 14,
              fontFamily: 'Cinzel',
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF8B0000),
              foregroundColor: const Color(0xFFC8A165),
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: const BorderSide(
                  color: Color(0xFFC8A165),
                  width: 1,
                ),
              ),
            ),
          ),
        ),
        // IMPORTANTE: Vista inicial de la aplicación
        home: const HomeView(),
      ),
    );
  }
} 