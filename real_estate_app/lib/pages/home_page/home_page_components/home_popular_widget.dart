import 'package:flutter/material.dart';
import 'package:real_estate_app/pages/home_page/home_page_components/home_page_components.dart';
class HomePopularWidget extends StatelessWidget {
  final String text;
  final String text1;
  final String text2;
  final String imageUrl;
  const HomePopularWidget({this.text, this.text1, this.text2, this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          height: 120,
          width: 390,
          child: Row(
            children: [
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: AppBorder.primaryContainer,
                  image: DecorationImage(
                      image: NetworkImage(
                          imageUrl),
                      fit: BoxFit.fill),
                ),
              ),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 65,
                    width: 230,
                    child: Text(
                      text,
                      style: AppTextStyle.secondaryText,
                    ),
                  ),
                  Container(
      child: Row(
        children: [
          Icon(Icons.place),
          Text(
            text1,
            style: AppStyle.ternaryAppText,
          )
        ],
      ),
    ),
    Container(
        height: 30,
        width: 100,
        decoration: BoxDecoration(
            borderRadius: AppBorder.primaryContainer,
            color: AppColor.primaryColor),
        child: Center(
          child: Text(
            text2,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
