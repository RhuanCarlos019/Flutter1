import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProgressIndicatorExample(),
    );
  }
}

class ProgressIndicatorExample extends StatefulWidget {
  @override
  _ProgressIndicatorExampleState createState() =>
      _ProgressIndicatorExampleState();
}

class _ProgressIndicatorExampleState extends State<ProgressIndicatorExample> {
  double _progressValue = 0.0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startProgress();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startProgress() {
    const oneSec = const Duration(milliseconds: 100);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        setState(() {
          if (_progressValue >= 1.0) {
            timer.cancel();
          } else {
            _progressValue += 0.01;
          }
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Barra de Progresso Dinâmica'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LinearProgressIndicator(
              value: _progressValue,
              minHeight: 20.0, // Altura mínima da barra de progresso
              backgroundColor: Colors.grey[300], // Cor de fundo
              valueColor: AlwaysStoppedAnimation<Color>(
                  Colors.blue), // Cor do indicador de progresso
            ),
            SizedBox(height: 20),
            Text('Progresso: ${(100 * _progressValue).toStringAsFixed(1)}%'),
          ],
        ),
      ),
    );
  }
}
