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
          title: Text('Container Layout'), // Título da barra de aplicativos
        ),
        body: Center(
          // Centraliza o conteúdo na tela
          child: Container(
            width: 200, // Largura do Container
            height: 200, // Altura do Container
            color: Colors.blue, // Cor de fundo do Container
            child: Column(
              // Uma coluna para organizar os widgets filhos verticalmente
              mainAxisAlignment: MainAxisAlignment
                  .center, // Alinha os filhos verticalmente ao centro
              children: [
                Text(
                  // Widget de texto
                  'Widget 1', // Texto exibido
                  style: TextStyle(
                    // Estilo do texto
                    color: Colors.white, // Cor do texto
                    fontSize: 20, // Tamanho da fonte
                  ),
                ),
                SizedBox(height: 20), // Espaçador vertical
                Container(
                  // Segundo Container
                  width: 100, // Largura do segundo Container
                  height: 50, // Altura do segundo Container
                  color: Colors.green, // Cor de fundo do segundo Container
                  child: Center(
                    // Centraliza o texto dentro do segundo Container
                    child: Text(
                      // Widget de texto dentro do segundo Container
                      'Widget 2', // Texto exibido
                      style: TextStyle(
                        // Estilo do texto
                        color: Colors.white, // Cor do texto
                        fontSize: 16, // Tamanho da fonte
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20), // Espaçador vertical
                Container(
                  // Terceiro Container
                  width: 150, // Largura do terceiro Container
                  height: 100, // Altura do terceiro Container
                  color: Colors.red, // Cor de fundo do terceiro Container
                  child: Center(
                    // Centraliza o texto dentro do terceiro Container
                    child: Text(
                      // Widget de texto dentro do terceiro Container
                      'Widget 3', // Texto exibido
                      style: TextStyle(
                        // Estilo do texto
                        color: Colors.white, // Cor do texto
                        fontSize: 18, // Tamanho da fonte
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
