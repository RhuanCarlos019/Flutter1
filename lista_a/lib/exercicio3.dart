import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyListViewPage(),
    );
  }
}

class MyListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView com Cards'),
      ),
      body: ListView.builder(
        itemCount: 10, // Número de itens na lista
        itemBuilder: (BuildContext context, int index) {
          return Card(
            margin: EdgeInsets.all(8), // Margem ao redor do card
            child: ListTile(
              leading: CircleAvatar(
                // Ícone à esquerda do ListTile
                backgroundColor: Colors.blue,
                child: Icon(Icons.person),
              ),
              title: Text('Item $index'), // Título do ListTile
              subtitle:
                  Text('Descrição do item $index'), // Subtítulo do ListTile
              onTap: () {
                // Ação quando o ListTile é pressionado
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Item $index'),
                      content: Text('Você pressionou o item $index.'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Fechar'),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }
}
