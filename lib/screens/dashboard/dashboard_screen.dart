import 'package:admin/constants.dart';
import 'package:admin/screens/dashboard/components/header.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        children: [
          Header()
        ],
      ),
    );
  }
}

