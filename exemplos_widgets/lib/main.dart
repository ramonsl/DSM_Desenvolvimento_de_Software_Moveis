import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Aula class",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("AULA"),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              Text("Item 1"),
              Divider(),
              Text("Item 1"),
              Divider(),
            ],
          ),
        ),
        body: Column(
          children: [
            Center(
              child: Card(
                color: Colors.deepPurple,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15))),
                child: Column(children: [
                  Divider(),
                  MyFruts("Bergamota"),
                  Divider(),
                  MyFruts("Melancia"),
                  Divider(),
                  MyFruts("Laranja"),
                  MyFruts("Laranja"),
                  Divider(),
                  Counter("time")
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyFruts extends StatelessWidget {
  final String texto;
  const MyFruts(this.texto);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: DecoratedBox(
        decoration: BoxDecoration(color: Colors.red),
        child: Text(
          texto,
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}

class Counter extends StatefulWidget {
  final String time;
  Counter(this.time);
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          setState(() {
            count++;
          });
        },
        child: MyFruts('$count'));
  }
}
