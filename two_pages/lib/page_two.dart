import 'package:flutter/material.dart';

class page02 extends StatefulWidget {
  String nome;
  page02(this.nome);

  @override
  _page02State createState() => _page02State();
}

class _page02State extends State<page02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Passando os valores"),
      ),
      body: Center(
        child: Text("Você salvou o nome ${widget.nome}"),
      ),
    );
  }
}
