import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: <Widget>[
            Expanded(
              //el flex esta por default en 1
              child: Column(
                children: <Widget>[
                  DrawerHeader(
                    child: Image.asset("assets/images/logo.png"),
                  ),
                  ListTile(
                    leading: SvgPicture.asset("assets/icons/menu_dashbord.svg", color: Colors.white,),
                    title: Text("Dashboard"),
                  )
                ],
              ),
            ),
            Expanded(
              //aqui se usa solo 5/6 dfe la pantalla completa
              flex: 5,
              child: Container(
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
