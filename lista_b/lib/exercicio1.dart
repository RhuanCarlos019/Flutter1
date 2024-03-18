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
          title: Text('Layout Básico'),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                color: Colors.blue,
                height: 100,
                child: Center(
                  child: Text(
                    'Container',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.star,
                    size: 50,
                    color: Colors.yellow,
                  ),
                  Text(
                    'Row',
                    style: TextStyle(fontSize: 24),
                  ),
                  Image.network(
                    'https://via.placeholder.com/150',
                    width: 100,
                    height: 100,
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text(
                'Column',
                style: TextStyle(fontSize: 24),
              ),
              Icon(
                Icons.favorite,
                size: 50,
                color: Colors.red,
              ),
              Image.network(
                'https://via.placeholder.com/150',
                width: 100,
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
