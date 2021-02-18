import 'package:flutter/material.dart';
import 'package:real_estate_app/pages/filter_page/filter_page_components/filter_page_components.dart';

class FilterOption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("I would like to ", style: AppTextStyle.secondaryText),
        SizedBox(
          height: 4,
        ),
        Row(
          children: [
            filterOption("Buy", true),
            filterOption("Rent", false),
          ],
        ),
      ],
    );
  }
}

class RentalWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Rental period", style: AppTextStyle.secondaryText),
        SizedBox(
          height: 8,
        ),
        Row(
          children: [
            filterOption("Short term", false),
            filterOption("long term", false),
            filterOption("indefinite", false),
          ],
        ),
      ],
    );
  }
}
