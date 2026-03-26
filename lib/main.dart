import 'package:flutter/material.dart';
import 'input_screen.dart'; // Importamos nuestra pantalla de formulario

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Key agregado según buenas prácticas

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Maps',
      theme: ThemeData(primarySwatch: Colors.blue), // Pavel Abreu Torres 2023-1066 - Tema de la aplicación
      home: InputScreen(), // Pantalla inicial: formulario de datos
    );
  }
}