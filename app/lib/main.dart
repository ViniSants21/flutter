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

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _showName = false;

  void _onFabPressed() {
    print('Botão pressionado!');
  }

  void _onNameButtonPressed() {
    setState(() {
      _showName = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minha Aplicação de Boas-Vindas.'),
        centerTitle: true,
         leading: IconButton(
            icon: const Icon(Icons.home),
            
            onPressed: () {},
          ),

        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Bem-vindo ao mundo Flutter!',
              textAlign: TextAlign.center,
            ),
            const Text(
              'Subtítulo: Qualquer um.',
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
              onPressed: _onNameButtonPressed,
              child: const Text('Mostrar nome'),
            ),
            if (_showName)
              const Text(
                'Vinicius Queiroz',
                textAlign: TextAlign.center,
              ),
          ],
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
