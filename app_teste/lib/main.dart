import 'package:flutter/material.dart';

void main() {
  runApp(Page01());
}

class Page01 extends StatefulWidget {
  @override
  _Page01State createState() => _Page01State();
}

class _Page01State extends State<Page01> {
  TextEditingController txtnome = TextEditingController();

  void salva() {
    String nome;
    setState(() {
      nome = txtnome.text;
    });

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Pagina1"),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            children: <Widget>[
              TextField(
                controller: txtnome,
                decoration: InputDecoration(
                    labelText: "Digite um valor", enabled: true),
              ),
              RaisedButton(
                  child: Text("Salvar"),
                  color: Colors.blueAccent,
                  onPressed: salva),
            ],
          ),
        ),
      );
    }
  }
}
