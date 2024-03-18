import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DynamicListPage(),
    );
  }
}

class DynamicListPage extends StatelessWidget {
  // Lista de itens fictícios
  final List<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
    'Item 7',
    'Item 8',
    'Item 9',
    'Item 10',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista Dinâmica'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            margin: EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(items[index]), // Texto do item
              subtitle:
                  Text('Descrição do ${items[index]}'), // Descrição do item
              leading: CircleAvatar(
                // Ícone à esquerda do ListTile
                backgroundColor: Colors.blue,
                child: Text((index + 1).toString()), // Número do item
              ),
              onTap: () {
                // Ação quando o ListTile é pressionado
                print('Item ${index + 1} pressionado.');
              },
            ),
          );
        },
      ),
    );
  }
}
