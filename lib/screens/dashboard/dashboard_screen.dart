import 'package:admin/constants.dart';
import 'package:admin/screens/dashboard/components/chart.dart';
import 'package:admin/screens/dashboard/components/header.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        children: [
          Header(),
          SizedBox(height: defaultPadding),
          Row(
            children: <Widget>[
              Expanded(
                flex: 5,
                child: Container(
                  height: 500,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: defaultPadding),
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.all(defaultPadding),
                  height: 500,
                  decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: const BorderRadius.all(Radius.circular(10))
                  ),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Storage Details", 
                        style: TextStyle(
                          fontSize: 18, 
                          fontWeight: FontWeight.w600
                        )
                      ),
                      SizedBox(height: defaultPadding),
                      Chart(),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}