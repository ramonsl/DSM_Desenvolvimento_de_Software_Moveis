import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "App Portal",
        home: Scaffold(
            appBar: AppBar(title: Text("Portal Torres Hotel"),backgroundColor: Colors.teal,),
            body: Center(
                child: Column (children:[
                  Text(
                    "Seu hotel em Torres",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.amber),
                  ),
                  Text (
                    "Portal Torres Hotel",
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[600]),
                  )
                ]
                )
            )
        )
    );
  }
}