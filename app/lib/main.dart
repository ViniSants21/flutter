import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Minha Aplicação de Boas-Vindas',
      home: const MyHomePage(title: 'Minha Aplicação de Boas-Vindas'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  void _onFabPressed() {
    print('Botão pressionado!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const Center(
        child: Text(
          'Bem-vindo ao mundo Flutter!',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onFabPressed,
        tooltip: 'Ação',
        child: const Icon(Icons.add),
      ),
    );
  }
}
