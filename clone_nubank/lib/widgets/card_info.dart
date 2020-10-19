import 'package:flutter/material.dart';

class CardInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.3,
      child: Card(
        margin: EdgeInsets.only(right: 4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(child: mainCard("Cartão de Crédito")),
            swipeOption()
          ],
        ),
      ),
    );
  }

  Container swipeOption() {
    return Container(
      color: Colors.grey[300],
      padding: EdgeInsets.all(30),
      child: Row(
        children: [
          Icon(
            Icons.home,
            size: 30,
          ),
          SizedBox(width: 16),
          Expanded(
            child: Text(
              "Compra mais recente em estabelecimento UBBER em Torres",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          Icon(
            Icons.keyboard_arrow_right,
          )
        ],
      ),
    );
  }

  Widget mainCard(String texto) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                Icons.credit_card,
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
          Spacer(),
          Text(
            "FATURA ATUAL",
            style: TextStyle(
                fontSize: 12,
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            "R\$ 1,500,00",
            style: TextStyle(
                fontSize: 20,
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold),
          ),
          Text.rich(TextSpan(text: "Limite disponivel ", children: [
            TextSpan(
                text: "900,00",
                style: TextStyle(color: Colors.green[600], fontSize: 20))
          ])),
          Spacer(),
        ],
      ),
    );
  }
}
