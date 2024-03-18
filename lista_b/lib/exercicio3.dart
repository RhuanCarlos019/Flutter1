import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavigationBarDemo(),
    );
  }
}

class NavigationBarDemo extends StatefulWidget {
  @override
  _NavigationBarDemoState createState() => _NavigationBarDemoState();
}

class _NavigationBarDemoState extends State<NavigationBarDemo> {
  int _selectedIndex = 0; // Índice da aba selecionada

  final List<Widget> _screens = [
    FirstScreen(), // Primeira tela
    SecondScreen(), // Segunda tela
    ThirdScreen(), // Terceira tela
  ];

  // Função para alternar entre as abas
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Barra de Navegação'),
      ),
      body: _screens[_selectedIndex], // Corpo da tela selecionada
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Tela 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Tela 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Tela 3',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Tela 1',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Tela 2',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Tela 3',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
