import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StackExample(),
    );
  }
}

class StackExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exemplo de Stack'),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center, // Alinhamento dos widgets filhos
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.blue,
            ),
            Container(
              width: 150,
              height: 150,
              color: Colors.red,
            ),
            Text(
              'Sobreposto',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
