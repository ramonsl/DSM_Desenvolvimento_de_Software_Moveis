import 'package:flutter/material.dart';
import 'package:two_pages/page_two.dart';

class page01 extends StatefulWidget {
  @override
  _page01State createState() => _page01State();
}

class _page01State extends State<page01> {
  TextEditingController txtnome = TextEditingController();

  void salva() {
    String nome;
    /*setState(() {
      nome = txtnome.text;
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => page02(nome),
          ));
    });*/
  }

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
              decoration:
                  InputDecoration(labelText: "Digite um valor", enabled: true),
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
