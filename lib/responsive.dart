import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const Responsive({
    Key key,
    @required this.mobile,
    this.tablet,
    @required this.desktop,
  }) : super(key: key);

  // es dispositivo mobile
  static bool isMobile(BuildContext context) => MediaQuery.of(context).size.width < 850;

  // es dispositivo tablet
  static bool isTablet(BuildContext context) => MediaQuery.of(context).size.width < 1100 && MediaQuery.of(context).size.width >= 850;

  //es escritorio
  static bool isDesktop(BuildContext context) => MediaQuery.of(context).size.width >= 1100;

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;

    // Si nuestro ancho es superior a 1100, lo consideramos un escritorio
    if (_size.width >= 1100) {
      return desktop;
    }
    
    // Si el ancho es inferior a 1100 y superior a 850, lo consideramos tableta
    else if (_size.width >= 850 && tablet != null) {
      return tablet;
    }

    // O menos que lo llamamos móvil
    else {
      return mobile;
    }
  }
}
