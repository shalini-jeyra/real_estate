import 'package:flutter/material.dart';
import 'package:real_estate_app/pages/filter_page/filter_page_components/filter_page_components.dart';
class MustHaveWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Must have", style: AppTextStyle.secondaryText),
        SizedBox(
          height: 20,
        ),
        Text("Bedrooms", style: AppTextStyle.secondaryText),
        Row(
          children: [
            filterOption("1", false),
            filterOption("2", true),
            filterOption("3", false),
            filterOption("4", false),
            filterOption("5", false),
          ],
        ),
      ],
    );
  }
}
class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Filters", style: AppTextStyle.primaryText),
        IconButton(
            icon: Icon(Icons.clear),
            onPressed: () {
              Navigator.pop(
                context,
                MaterialPageRoute(
                  builder: (buildContext) => SearchPage(),
                ),
              );
            })
      ],
    );
  }
}
