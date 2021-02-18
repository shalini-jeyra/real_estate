import 'package:flutter/material.dart';
import 'package:real_estate_app/pages/filter_page/filter_page_components/filter_page_components.dart';

class FilterPage extends StatefulWidget {
  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  var selectedRange = RangeValues(40, 80);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(right: 24, left: 24, top: 32, bottom: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderWidget(),
            FilterOption(),
            SizedBox(
              height: 12,
            ),
            PropertyWidget(),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Price range(\u{20AC} month)",
                    style: AppTextStyle.secondaryText),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    filterOption("1600", true),
                    RangeSlider(
                      values: selectedRange,
                      onChanged: (RangeValues newRange) {
                        setState(() {
                          selectedRange = newRange;
                        });
                      },
                      min: 0,
                      max: 100,
                      activeColor: AppColor.secondaryColor,
                      inactiveColor: IconColor.primaryColor,
                    ),
                    filterOption("3200", true),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            RentalWidget(),
            SizedBox(
              height: 20,
            ),
            FilterButtonWidget(),
            SizedBox(
              height: 20,
            ),
            MustHaveWidget(),
            SizedBox(
              height: 20,
            ),
            BottomFilterWidget(),
          ],
        ),
      ),
     
    );
  }
}
