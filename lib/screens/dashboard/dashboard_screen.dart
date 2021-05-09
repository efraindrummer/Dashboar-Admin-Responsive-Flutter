import 'package:admin/constants.dart';
import 'package:admin/screens/dashboard/components/chart.dart';
import 'package:admin/screens/dashboard/components/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                  decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: const BorderRadius.all(Radius.circular(10))
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                      StorageInfoCard(svgSrc: "assets/icons/Documents.svg", title: "Documents Files", amountOfFiles: "1.3GB", numOfFiles: 1328),
                      StorageInfoCard(svgSrc: "assets/icons/media.svg", title: "Media Files", amountOfFiles: "15.3GB", numOfFiles: 1328),
                      StorageInfoCard(svgSrc: "assets/icons/folder.svg", title: "Other Files", amountOfFiles: "1.3GB", numOfFiles: 1328),
                      StorageInfoCard(svgSrc: "assets/icons/unknown.svg", title: "Unknown Files", amountOfFiles: "1.3GB", numOfFiles: 1328),
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

class StorageInfoCard extends StatelessWidget {

  const StorageInfoCard({
    Key key, 
    @required this.title, 
    @required this.svgSrc, 
    @required this.amountOfFiles, 
    @required this.numOfFiles,
  }) : super(key: key);

  final String title, svgSrc, amountOfFiles;
  final int numOfFiles;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: defaultPadding),
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: primaryColor.withOpacity(0.15),
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(defaultPadding)
        )
      ),
      child: Row(
        children: [
          SizedBox(
            height: 20, 
            width: 20,
            child: SvgPicture.asset(svgSrc),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title, 
                    maxLines: 1, 
                    overflow: TextOverflow.ellipsis
                  ),
                  Text(
                    "$numOfFiles Files",
                    style: Theme.of(context).textTheme.caption.copyWith(color: Colors.white70)
                  ),
                ],
              ),
            ),
          ),
          Text(amountOfFiles)
        ],
      ),
    );
  }
}