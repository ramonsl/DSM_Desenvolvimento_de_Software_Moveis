import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Home(),
        debugShowCheckedModeBanner: false,
      ),
    );

class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _pesoControler = TextEditingController();
  TextEditingController _alturaController = TextEditingController();
  String _resultado;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    resetFields();
  }

  void resetFields() {
    _pesoControler.text = '';
    _alturaController.text = '';
    setState(() {
      _resultado = 'Informe seus dados!';
    });
  }

  void calculaImc() {
    double peso = double.parse(_pesoControler.text);
    double altura = double.parse(_alturaController.text) / 100.0;
    double imc = peso / (altura * altura);
    setState(() {
      _resultado = "IMC ${imc.toStringAsPrecision(2)}\n";
      if (imc < 18.6)
        _resultado += "Abaixo do peso";
      else if (imc < 25.0)
        _resultado += "Peso ideal";
      else if (imc < 30.0)
        _resultado += "Levemente acima do peso";
      else if (imc < 35.0)
        _resultado += "Obesidade Grau I";
      else if (imc < 40.0)
        _resultado += "Obesidade Grau II";
      else
        _resultado += "Obesidade Grau IIII";
    });
  }

  Widget buildCalculateButton() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 36.0),
      child: RaisedButton(
        onPressed: () {
          if (_formKey.currentState.validate()) {
            calculaImc();
          }
        },
        child: Text("Calcular", style: TextStyle(color: Colors.white)),
        color: Colors.brown,
      ),
    );
  }

  Widget buildTextResult() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 36.0),
      child: Text(
        _resultado,
        textAlign: TextAlign.center,
      ),
    );
  }

  Form buildForm() {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildTextFormField(
              label: "Peso em Kilos",
              error: "Informe seu peso",
              controller: _pesoControler),
          buildTextFormField(
              label: "Altura:",
              error: "Insira sua altura",
              controller: _alturaController),
          buildTextResult(),
          buildCalculateButton(),
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            padding: EdgeInsets.all(20.0), child: buildForm()));
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text("Calcular IMC"),
      backgroundColor: Colors.blue,
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.refresh),
          onPressed: () {
            resetFields(); //resetFields;
          },
        )
      ],
    );
  }

  TextFormField buildTextFormField(
      {TextEditingController controller, String error, String label}) {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(labelText: label),
      controller: controller,
      validator: (text) {
        return text.isEmpty ? error : null;
      },
    );
  }
}
