import 'package:flutter/material.dart';
import 'package:real_estate_app/styles/styles.dart';
import 'package:real_estate_app/pages/search_page/search_page.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}
class _ProfilePageState extends State<ProfilePage> {
  
  var selectedRange = RangeValues(40, 80);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 24, left: 24, top: 32, bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Filters",
                style: AppTextStyle.primaryText
              ),
              IconButton(icon: Icon(Icons.clear),onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (buildContext)=>SearchPage()));
              }
              )
            ],
          ),
          SizedBox(
            height: 32,
          ),
          Text(
            "I would like to ",
             style: AppTextStyle.secondaryText
            ),
             SizedBox(
            height: 8,
          ),
          Row(
            children: [
              buildOption("Buy", true),
              buildOption("Rent", false),         
            ],
          ),
          SizedBox(
            height: 32,
          ),
          Text(
            "Property type",
             style: AppTextStyle.secondaryText
            ),
             SizedBox(
            height: 8,
          ),
          Row(
            children: [
              buildOption("Any", true),
              buildOption("Room", false),
               buildOption("Flat", false),
              buildOption("Apartment", false),
              buildOption("House", false),         
            ],
          ),
            RangeSlider(
            values: selectedRange,
            onChanged: (RangeValues newRange) {
          setState(() {
            selectedRange = newRange;
          });
            },
            min: 0,
            max: 100,
            activeColor: Colors.blue[900],
            inactiveColor: Colors.grey[300],
          ),
        ],
      ),
    );
  }

  Widget buildOption(String text, bool selected){
    return Container(
      height: 30,
      width: selected?50:75,
      decoration: BoxDecoration(
                border: Border.all(
                  color:selected?TextColor.primaryColor:AppColor.primaryColor,
                ),
                borderRadius: ButtonBorder.primaryContainer,
              ),
      child: Center(
        child: Text(
          text,
          style:HintTextStyle.secondaryText
        ),
      ),
    );
  }
}

