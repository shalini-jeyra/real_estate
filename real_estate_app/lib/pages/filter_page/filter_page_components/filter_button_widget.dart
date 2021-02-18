import 'package:flutter/material.dart';
import 'package:real_estate_app/pages/filter_page/filter_page_components/filter_page_components.dart';
class FilterButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("London District", style: AppTextStyle.secondaryText),
        filterOption("Soho", false),
        Container(
          height: 50,
          width: 150,
          decoration: BoxDecoration(
              borderRadius: ButtonBorder.primaryContainer,
              color: AppColor.secondaryColor),
          child: Center(
              child: Text(
            'Less filters',
            style: AppStyle.primaryAppText,
          )),
        ),
      ],
    );
  }
}

class PropertyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Property type", style: AppTextStyle.secondaryText),
        SizedBox(
          height: 4,
        ),
        Row(
          children: [
            filterOption("Any", true),
            filterOption("Room", false),
            filterOption("Flat", false),
            filterOption("Apartment", false),
            filterOption("House", false),
          ],
        ),
      ],
    );
  }
}
