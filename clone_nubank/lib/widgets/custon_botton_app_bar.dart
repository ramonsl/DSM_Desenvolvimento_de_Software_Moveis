import 'package:flutter/material.dart';

class CustonBottonAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(20);
  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.keyboard_arrow_down,
      color: Colors.white,
      size: 28,
    );
  }
}
