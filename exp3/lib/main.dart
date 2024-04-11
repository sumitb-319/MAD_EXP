import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '03_SumitBarkade_Exp3',
      home: Scaffold(
        appBar: AppBar(
          title: Text('03_SumitBarkade_Exp3'),
        ),
        backgroundColor: Colors.yellow, // Set background color to yellow
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome to my Flutter UI!',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  print('TextButton pressed');
                },
                child: Text('TextButton'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  print('ElevatedButton pressed');
                },
                child: Text('ElevatedButton'),
              ),
              SizedBox(height: 10),
              OutlinedButton(
                onPressed: () {
                  print('OutlinedButton pressed');
                },
                child: Text('OutlinedButton'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
