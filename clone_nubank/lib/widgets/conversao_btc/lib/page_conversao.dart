import 'package:flutter/material.dart';

class PageConversao extends StatefulWidget {
  @override
  _PageConversaoState createState() => _PageConversaoState();
}

class _PageConversaoState extends State<PageConversao> {
  TextEditingController txtValorReais = new TextEditingController();
  TextEditingController txtValorBtc = new TextEditingController();
  double reais;
  double valorBtc;
  double valor = 0;
  final _formKey = GlobalKey<_PageConversaoState>();

  void calcular() {
    setState(() {
      reais = double.parse(txtValorReais.text);
      valorBtc = double.parse(txtValorBtc.text);
      valor = reais / valorBtc;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Conversão BTC"),
        backgroundColor: Colors.black54,
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(8, 16, 8, 8),
        margin: const EdgeInsets.fromLTRB(4, 8, 4, 4),
        color: Colors.white38,
        child: buildForm(),
      ),
    );
  }

  Form buildForm() {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          TextField(
            controller: txtValorReais,
            decoration:
                InputDecoration(labelText: "Digite um valor", enabled: true),
            keyboardType: TextInputType.number,
          ),
          TextFormField(
            controller: txtValorBtc,
            decoration: InputDecoration(
                labelText: "Digite o preço do BTC", enabled: true),
            keyboardType: TextInputType.number,
          ),
          Text(
            "Valor em BTC $valor",
            style: TextStyle(fontSize: 10),
          ),
          RaisedButton(
            onPressed: calcular,
            color: Colors.blue,
            child: Text(
              "Calcular total",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
