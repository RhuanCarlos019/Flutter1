import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu de Opções'),
        // Adicionar o ícone do menu no AppBar
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer(); // Abre o Drawer
              },
            );
          },
        ),
      ),
      // Adicionar o Drawer à Scaffold
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Opção 1'),
              onTap: () {
                // Implemente a ação desejada para a opção 1
                Navigator.pop(context); // Fecha o Drawer
              },
            ),
            ListTile(
              title: Text('Opção 2'),
              onTap: () {
                // Implemente a ação desejada para a opção 2
                Navigator.pop(context); // Fecha o Drawer
              },
            ),
            ListTile(
              title: Text('Opção 3'),
              onTap: () {
                // Implemente a ação desejada para a opção 3
                Navigator.pop(context); // Fecha o Drawer
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          'Conteúdo da Página Principal',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
