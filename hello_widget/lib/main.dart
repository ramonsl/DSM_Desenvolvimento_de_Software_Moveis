import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'hello app',
        home: Scaffold(
          appBar: AppBar(
            title: Text("My App bar"),
            backgroundColor: Colors.blueAccent[800],
          ),
          body: Center(
            child: Column(
              children: [
                Text(
                  "Hello world",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[800]),
                  ),
              ],
            ),
              ),
          ),
        );
  }
}
