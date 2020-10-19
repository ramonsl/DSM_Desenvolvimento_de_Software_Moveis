import 'package:flutter/material.dart';

class AccountInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(right: 4),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          mainAccout("Nu Conta"),
        ],
      ),
    );
  }

  Widget mainAccout(String texto) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                Icons.account_balance_wallet,
                size: 30,
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                texto,
                style: TextStyle(
                  fontSize: 18,
                ),
              )
            ],
          ),
          SizedBox(
            height: 18,
          ),
          Text(
            "R\$ 1,500,00",
            style: TextStyle(
                fontSize: 20,
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "Saldo disponivel",
            style: TextStyle(
                fontSize: 12,
                color: Colors.green[400],
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
