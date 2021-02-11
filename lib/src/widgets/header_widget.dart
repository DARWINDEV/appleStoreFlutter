import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Row(
          children: <Widget>[
            Icon(Icons.menu_outlined),
            Spacer(),
            FaIcon(FontAwesomeIcons.apple, color: Color(0xffFFFFFF),),
            Spacer(),
            FaIcon(FontAwesomeIcons.shoppingBag)
          ],
        ),
      ),
    );
  }
}
