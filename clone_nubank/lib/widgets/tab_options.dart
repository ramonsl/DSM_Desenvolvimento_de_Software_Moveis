import 'package:flutter/material.dart';
import 'options_button.dart';

class TabOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: EdgeInsets.only(right: 4),
      child: ListView(
        children: [
          OptionsButton("PIX", Icons.ac_unit),
          OptionsButton("Pagar", Icons.account_balance_wallet),
          OptionsButton("Transferir", Icons.trending_flat),
          OptionsButton("Doação", Icons.donut_small),
          OptionsButton("Indicar pessoa", Icons.person_add),
          OptionsButton("Me ajuda", Icons.help),
        ],
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
