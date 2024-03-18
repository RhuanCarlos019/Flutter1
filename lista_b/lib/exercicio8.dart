import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ImageExample(),
    );
  }
}

class ImageExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exemplo de Imagens'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Carregando uma imagem de uma URL externa
            Image.network(
              'https://via.placeholder.com/200',
              width: 200,
              height: 200,
            ),
            SizedBox(height: 20),
            // Carregando uma imagem de recursos locais
            Image.asset(
              'assets/local_image.png',
              width: 200,
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
