import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'viewmodels/dungeon_viewmodel.dart';
import 'views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DungeonViewModel(),
      child: MaterialApp(
        title: 'WowDungeons',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        home: const HomeView(),
      ),
    );
  }
} 