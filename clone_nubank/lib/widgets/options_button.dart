import 'package:flutter/material.dart';

class OptionsButton extends StatelessWidget {
  final String txt;
  final IconData icon;
  OptionsButton(this.txt, this.icon);
  @override
  Widget build(
    BuildContext context,
  ) {
    return Container(
      height: 100,
      width: 100,
      margin: EdgeInsets.only(right: 4),
      color: Colors.white24,
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(
            icon, //icon
            color: Colors.white,
          ),
          Spacer(),
          Text(
            this.txt,
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
