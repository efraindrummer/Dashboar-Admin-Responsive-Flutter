import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            DrawerHeader(
              child: Image.asset("assets/images/logo.png"),
            ),
            DraweListTile(title: "Dashboard",    svgSrc: "assets/icons/menu_dashbord.svg",      press: (){}),
            DraweListTile(title: "Transaction",  svgSrc: "assets/icons/menu_tran.svg",          press: (){}),
            DraweListTile(title: "Task",         svgSrc: "assets/icons/menu_task.svg",          press: (){}),
            DraweListTile(title: "Documents",    svgSrc: "assets/icons/menu_doc.svg",           press: (){}),
            DraweListTile(title: "Store",        svgSrc: "assets/icons/menu_store.svg",         press: (){}),
            DraweListTile(title: "Notification", svgSrc: "assets/icons/menu_notification.svg",  press: (){}),
            DraweListTile(title: "Profile",      svgSrc: "assets/icons/menu_profile.svg",       press: (){}),
            DraweListTile(title: "Settings",     svgSrc: "assets/icons/menu_setting.svg",       press: (){}),
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