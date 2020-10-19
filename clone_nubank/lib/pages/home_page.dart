import 'package:clone_nubank/themes/colors.dart';
import 'package:clone_nubank/widgets/account_info.dart';
import 'package:clone_nubank/widgets/card_info.dart';
import 'package:clone_nubank/widgets/custon_botton_app_bar.dart';
import 'package:clone_nubank/widgets/person_identification.dart';
import 'package:clone_nubank/widgets/tab_options.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        title: PersonIdentification(),
        bottom: CustonBottonAppBar(),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                children: <Widget>[
                  CardInfo(),
                  SizedBox(
                    height: 12,
                  ),
                  AccountInfo(),
                  //  AccountInfo(),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TabOptions(),
          ],
        ),
      ),
    );
  }
}
