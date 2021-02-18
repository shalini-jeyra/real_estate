import 'package:flutter/material.dart';
import 'package:real_estate_app/pages/home_page/home_page_components/home_page_components.dart';
class AppWidget extends StatelessWidget {
  final String text;
  final String text1;
  final String text2;
  final String imageUrl;
  const AppWidget({this.text, this.text1, this.text2, this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: AppBorder.primaryContainer,
        color: AppColor.primaryColor,
      ),
      height: 280,
      width: 350,
      child: Stack(
        children: [
          Container(
            height: 200,
            width: 350,
            decoration: BoxDecoration(borderRadius:AppBorder.imageContainer,
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(300, 10, 0, 0),
            child: CircleAvatar(
              child: Container(
                child: Icon(Icons.thumb_up_alt_outlined),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 150, 0, 0),
            child: Container(
              height: 30,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: AppBorder.primaryContainer,
                  color: AppColor.primaryColor),
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 200, 0, 0),
            height: 50,
            width: 280,
            child: Text(
              text1,
              style: AppTextStyle.secondaryText,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(15, 240, 0, 0),
            child: Row(
              children: [
                Icon(Icons.place),
                Text(
                  text2,
                  style: AppStyle.ternaryAppText,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}