import 'package:flutter/material.dart';

void main() {
  runApp(HelloWorldApp());
}

class HelloWorldApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '03_SumitBarkade_Exp02',
      home: Scaffold(
        appBar: AppBar(
          title: Text('03_SumitBarkade_Exp02'),
        ),
        backgroundColor: Colors.yellow, 
        body: Center(
          child: Text(
            'Hello, World!',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
