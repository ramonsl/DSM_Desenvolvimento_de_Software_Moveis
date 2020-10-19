import 'package:flutter/material.dart';

class PageCalcular extends StatefulWidget {
  @override
  _PageCalcularState createState() => _PageCalcularState();
}

class _PageCalcularState extends State<PageCalcular> {
  GlobalKey<FormState> _key = new GlobalKey();
  TextEditingController txtValorReais = new TextEditingController();
  TextEditingController txtvalorDoBtc = new TextEditingController();
  double reais;
  double valorBtc;
  double totalBtc = 0;

  void converter() {
    print("OPA");

    setState(() {
      reais = double.parse(txtValorReais.text);
      valorBtc = double.parse(txtvalorDoBtc.text);
      totalBtc = reais / valorBtc;
    });
  }

  String _validarNumber(String value) {
    if (value.length == 0) {
      return "Campo precisa ser preenchido";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Conversão BTC"),
        backgroundColor: Colors.black38,
      ),
      body: Form(
        key: _key,
        child: Container(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              TextFormField(
                controller: txtValorReais,
                validator: _validarNumber,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: "Valor em reais"),
              ),
              TextFormField(
                controller: txtvalorDoBtc,
                validator: _validarNumber,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: "Valor do BTC"),
              ),
              Text(
                "Valor em BTC $totalBtc ",
                style: TextStyle(color: Colors.green, fontSize: 18),
              ),
              RaisedButton(
                color: Colors.green,
                onPressed: _formValidator,
                child: Text(
                  "Calcular valor",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  _formValidator() {
    if (_key.currentState.validate()) {
      converter();
    } else {
      print("Opa");
    }
  }
}
