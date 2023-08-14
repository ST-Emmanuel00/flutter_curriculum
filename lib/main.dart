import 'package:cv/screen/academy_information.dart';
import 'package:cv/screen/knowledge.dart';
import 'package:cv/screen/navegador.dart';
import 'package:cv/screen/personal_information.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Emmanuel tabares 📄',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
          fontFamily: 'Raleway'
          
        ),
        home: const Navegador() ,
      );
  }
}
