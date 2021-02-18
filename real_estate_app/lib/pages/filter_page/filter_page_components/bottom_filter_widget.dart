import 'package:flutter/material.dart';
import 'package:real_estate_app/styles/styles.dart';
class BottomFilterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Amentities", style: AppTextStyle.secondaryText),
        Row(
          children: [
            filterOption("Smart lock", false),
            filterOption("Quiet", false),
            filterOption("Shops", true),
            filterOption("Design", false),
            FloatingActionButton(
              backgroundColor: AppColor.secondaryColor,
              foregroundColor: AppColor.primaryColor,
              onPressed: () {},
              child: Icon(Icons.add),
            )
          ],
        ),
        Container(
          height: 50,
          width: 400,
          decoration: BoxDecoration(
              borderRadius: ButtonBorder.secondaryContainer,
              color: AppColor.secondaryColor),
          child: Center(
            child: Text(
              'View properties (87)',
              style: AppStyle.primaryAppText,
            ),
          ),
        ),
      ],
    );
  }
}
Widget filterOption(String text, bool selected) {
    return Container(
      height: 30,
      width: selected ? 50 : 75,
      decoration: BoxDecoration(
        border: Border.all(
          color: selected ? TextColor.primaryColor : TextColor.ternaryColor,
        ),
        borderRadius: ButtonBorder.primaryContainer,
      ),
      child: Center(
        child: Text(text, style: HintTextStyle.secondaryText),
      ),
    );
  }
