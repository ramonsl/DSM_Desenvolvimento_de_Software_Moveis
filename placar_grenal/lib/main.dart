import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("placar grenal"),
        ),
        body: Center(
          child: Column(
            children: [placarCounter("GREMIO"), Text("X"),placarCounter("INTER")],
          ),
        ),
      ),
    );
  }
}

class placarCounter extends StatefulWidget {
  final String time;
  placarCounter(this.time);
  @override
  _placarCounter createState() => _placarCounter();
}

class _placarCounter extends State<placarCounter> {
  int valor = 0;

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          valor++;
        });
      },
      child: Text('${widget.time}  - $valor')
    );
  }
}

