import 'package:admin/responsive.dart';
import 'package:admin/screens/dashboard/dashboard_screen.dart';
import 'package:admin/screens/main/components/side_menu.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            if(Responsive.isDesktop(context)) 
            Expanded(
              //el flex esta por default en 1
              child: SideMenu(),
            ),
            Expanded(
              //aqui se usa solo 5/6 de la pantalla completa
              flex: 5,
              child: Container(
                child: DashboardScreen(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}