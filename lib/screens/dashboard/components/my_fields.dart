import 'package:admin/constants.dart';
import 'package:admin/models/MyFiles.dart';
import 'package:admin/screens/dashboard/components/field_info_card.dart';
import 'package:flutter/material.dart';

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
                childAspectRatio: 1.4
              ),
              itemBuilder: (context, index) => FieldInfoCard(info: demoMyFiels[index]),
            ),
      ],
    );
  }
}