import 'package:admin/constants.dart';
import 'package:admin/responsive.dart';
import 'package:admin/screens/dashboard/components/header.dart';
import 'package:admin/screens/dashboard/components/my_fields.dart';
import 'package:admin/screens/dashboard/components/recent_files.dart';
import 'package:admin/screens/dashboard/components/storage_details.dart';
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 5,
                child: Column(
                  children: [
                    MyFields(),
                    SizedBox(height: defaultPadding),
                    RecentFiles(),
                    if(Responsive.isMobile(context)) SizedBox(height: defaultPadding),
                      //separated
                    if(Responsive.isMobile(context)) StorageDetails()
                  ],
                )
              ),
              if(!Responsive.isMobile(context))
                SizedBox(width: defaultPadding),
                //separated
              if(!Responsive.isMobile(context)) 
              Expanded(
                flex: 2,
                child: StorageDetails()
              )
            ],
          )
        ],
      ),
    );
  }
}

