import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Row e Column'), // Título da barra de aplicativos
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star), // Ícone
                  Text('Widget 1'), // Texto
                  Image.network(
                    'https://via.placeholder.com/150', // URL da imagem
                    width: 50, // Largura da imagem
                    height: 50, // Altura da imagem
                  ),
                ],
              ),
              SizedBox(height: 20), // Espaçador vertical
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.favorite), // Ícone
                  Text('Widget 2'), // Texto
                  Image.network(
                    'https://via.placeholder.com/150', // URL da imagem
                    width: 50, // Largura da imagem
                    height: 50, // Altura da imagem
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
