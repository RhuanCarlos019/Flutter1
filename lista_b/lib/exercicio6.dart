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
        title: Text('Menu Deslizante'),
      ),
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
              title: Text('Tela 1'),
              onTap: () {
                Navigator.pop(context); // Fecha o Drawer
                // Adicione a navegação para a Tela 1 aqui
              },
            ),
            ListTile(
              title: Text('Tela 2'),
              onTap: () {
                Navigator.pop(context); // Fecha o Drawer
                // Adicione a navegação para a Tela 2 aqui
              },
            ),
            Divider(), // Adiciona uma linha divisória
            ListTile(
              title: Text('Configurações'),
              onTap: () {
                Navigator.pop(context); // Fecha o Drawer
                // Adicione a navegação para a tela de Configurações aqui
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
