import 'package:admin/constants.dart';
import 'package:admin/models/MyFiles.dart';
import 'package:admin/responsive.dart';
import 'package:admin/screens/dashboard/components/field_info_card.dart';
import 'package:flutter/material.dart';

class MyFields extends StatelessWidget {
  const MyFields({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final Size _size = MediaQuery.of(context).size;

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
        Responsive(
          mobile: FieldInfoCardGridView(), 
          tablet: FieldInfoCardGridView(),
          desktop: FieldInfoCardGridView(
            childAspectRatio: _size.width < 1400? 1.1 : 1.4
          )
        ),
      ],
    );
  }
}

class FieldInfoCardGridView extends StatelessWidget {
  
  const FieldInfoCardGridView({
    Key key, 
    this.crossAxisCount = 4, 
    this.childAspectRatio = 1,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: demoMyFiels.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount, 
        crossAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio
      ),
      itemBuilder: (context, index) => FieldInfoCard(info: demoMyFiels[index]),
    );
  }
}