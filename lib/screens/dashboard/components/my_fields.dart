import 'package:admin/constants.dart';
import 'package:admin/models/MyFiles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyFields extends StatelessWidget {
  const MyFields({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("My Files", style: Theme.of(context).textTheme.subtitle1),
            ElevatedButton.icon(
              onPressed: (){}, 
              icon: Icon(Icons.add),
              label: Text("Add New"),
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: defaultPadding * 1.5, 
                  vertical: defaultPadding
                )
              ),
            ),
          ],
        ),
        SizedBox(height: defaultPadding),
            GridView.builder(
              shrinkWrap: true,
              itemCount: demoMyFiels.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, 
                crossAxisSpacing: defaultPadding,
                childAspectRatio: 1.0
              ),
              itemBuilder: (context, index) => FieldInfoCard(info: demoMyFiels[index]),
            ),
      ],
    );
  }
}

class FieldInfoCard extends StatelessWidget {

  const FieldInfoCard({
    Key key, 
    @required this.info,
  }) : super(key: key);

  final CloudStorageInfo info;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(defaultPadding * 0.75),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: info.color.withOpacity(0.1),
                  borderRadius: const BorderRadius.all(Radius.circular(10))
                ),
                child: SvgPicture.asset(
                  info.svgSrc,
                  color: info.color,
                ),
              ),
              Icon(
                Icons.more_vert, 
                color: Colors.white54
              )
            ],
          ),
          Text(
            info.title, 
            maxLines: 1, 
            overflow: TextOverflow.ellipsis
          ),
          ProgressLines(
            color: info.color, 
            percentaje: info.percentage
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "${info.numOfFiels} Files",
                style: Theme.of(context).textTheme.caption.copyWith(
                  color: Colors.white70
                ),
              ),
              Text(
                info.totalStorage,
                style: Theme.of(context).textTheme.caption.copyWith(
                  color: Colors.white
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class ProgressLines extends StatelessWidget {
  const ProgressLines({
    Key key,
    this.color = primaryColor, 
    @required this.percentaje,
  }) : super(key: key);

  final Color color;
  final int percentaje;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 5,
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.all(Radius.circular(10))
          ),
        ),
        LayoutBuilder(builder: (context, constraints) => Container(
          width: constraints.maxWidth * (percentaje / 100),
          height: 5,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(Radius.circular(10))
          ),
        ))
      ],
    );
  }
}