import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ex06 - BRADEMO',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ex06 - BRADEMO'),
        ),
        body: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: 150,
              minHeight: 100,
              maxWidth: 200,
              maxHeight: 200,
            ),
            child: Container(
              color: Colors.blue,
              width: 300,
              height: 300,
              child: Center(
                child: Text(
                  'Caixa Central',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}