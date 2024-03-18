import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ButtonExamples(),
    );
  }
}

class ButtonExamples extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exemplo de Botões'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.blue, // Cor de fundo
                onPrimary: Colors.white, // Cor do texto
                padding: EdgeInsets.symmetric(
                    horizontal: 40, vertical: 16), // Espaçamento interno
              ),
              child: Text('Elevated Button'),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                primary: Colors.green, // Cor do texto
                padding: EdgeInsets.all(16), // Espaçamento interno
              ),
              child: Text('Text Button'),
            ),
            SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                primary: Colors.red, // Cor do contorno
                side: BorderSide(color: Colors.red), // Cor do contorno
                padding: EdgeInsets.symmetric(
                    horizontal: 40, vertical: 16), // Espaçamento interno
              ),
              child: Text('Outlined Button'),
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.add), // Ícone à esquerda do texto
              label: Text('Elevated Button with Icon'),
            ),
            SizedBox(height: 20),
            OutlinedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.remove), // Ícone à esquerda do texto
              label: Text('Outlined Button with Icon'),
            ),
          ],
        ),
      ),
    );
  }
}
