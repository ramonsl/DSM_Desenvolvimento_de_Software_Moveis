import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Lista de frutas",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Frutas"),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            MyFruts("Bergamota"),
            Divider(),
            MyFruts("Laranja"),
            Divider(),
            ItemCounter("Maracuja"),
          ]),
        ),
      ),
    );
  }
}

class MyFruts extends StatelessWidget {
  final String text;
  const MyFruts(this.text);

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DecoratedBox(
        decoration: BoxDecoration(color: Colors.lightBlue),
        child: Text(
          text,
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}

class ItemCounter extends StatefulWidget {
  final String name;
  ItemCounter(this.name);

  _ItemCounter createState() => _ItemCounter();
}

class _ItemCounter extends State<ItemCounter> {
  int count = 0;
  @override
Widget build(BuildContext context) {
    return GestureDetector(
      onTap:() {
        setState((){
          count++;
        });
      },
      child: Text('$count', style: TextStyle(fontSize: 50))
    );
  }
}
/*
class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Flutter",
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text ("Teste"),
          ),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
              child: Row(children: [     
                Container(alignment: Alignment.center, color: Colors.brown,child:Text("Texto 1")),
                Expanded(child: Text("Texto 2")),
                Divider(),
                Text("Texto 3", style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold, fontSize: 20)) ]
        )),))
);
  }
}*/

/*
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Flutter Playground",
        home: Scaffold(
            appBar: AppBar(title: Text("Flutter Playground!")),
            drawer: Drawer(
                child: Column(children: [
              Text("Item 1"),
              Divider(),
              Text("Item 2"),
              Divider(),
              Text("Item 3")
            ])),
            body: Center(
                child: Row(children: [
              Text("Child1"),
              Text("Child2"),
              Text("Child3")
            ]))));
  }
}*/
