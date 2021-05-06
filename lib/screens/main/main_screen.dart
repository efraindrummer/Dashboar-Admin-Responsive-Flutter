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
                  DraweListTile(title: "Dashboard", svgSrc: "assets/icons/menu_dashbord.svg", press: (){}),
                  DraweListTile(title: "Dashboard", svgSrc: "assets/icons/menu_dashbord.svg", press: (){}),
                  DraweListTile(title: "Dashboard", svgSrc: "assets/icons/menu_dashbord.svg", press: (){}),
                  DraweListTile(title: "Dashboard", svgSrc: "assets/icons/menu_dashbord.svg", press: (){}),
                  DraweListTile(title: "Dashboard", svgSrc: "assets/icons/menu_dashbord.svg", press: (){}),
                  DraweListTile(title: "Dashboard", svgSrc: "assets/icons/menu_dashbord.svg", press: (){}),
                  DraweListTile(title: "Dashboard", svgSrc: "assets/icons/menu_dashbord.svg", press: (){}),
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

class DraweListTile extends StatelessWidget {
  
  const DraweListTile({
    Key key, 
    @required this.title, 
    @required this.svgSrc, 
    @required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(svgSrc, color: Colors.white54, height: 16,),
      title: Text(title, style: TextStyle(color: Colors.white54)),
    );
  }
}
