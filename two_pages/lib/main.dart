import 'package:flutter/material.dart';
import 'package:two_pages/page_two.dart';

void main() {
  runApp(pageHome());
}

class pageHome extends StatefulWidget {
  @override
  _pageHomeState createState() => _pageHomeState();
}

class _pageHomeState extends State<pageHome> {
  TextEditingController txtnome = TextEditingController();

  void salva() {
    String nome;
    setState(() {
      nome = txtnome.text;
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => page02(nome),
          ));
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
