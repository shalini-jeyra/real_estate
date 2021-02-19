import 'package:flutter/material.dart';
import 'package:real_estate_app/pages/home_page/home_page_components/home_page_components.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(350.0),
        child: AppBar(
          backgroundColor: AppColor.secondaryColor,
          title: Text('Recommended'),
          actions: [Icon(Icons.settings)],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(200.0),
            child: SingleChildScrollView(
              padding: EdgeInsets.fromLTRB(20, 0, 0, 20),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  AppWidget(
                    text: '\u{20AC}${2.445}pem',
                    text1: 'Furnished two bedroom apartment glass house',
                    text2: 'Wardour Street,Soho,W1F',
                    imageUrl:
                        'https://images.unsplash.com/photo-1605545258459-f10109449620?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1868&q=80',
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  AppWidget(
                    text: '\u{20AC}${2.145}pem',
                    text1:
                        'Comfortable bright two bedroom apartment with garage',
                    text2: 'Wardour Street,Soho,W1F',
                    imageUrl:
                        'https://images.unsplash.com/photo-1560184897-ae75f418493e?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Nnx8cmVhbCUyMGVzdGF0ZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  AppWidget(
                    text: '\u{20AC}${2.145}pem',
                    text1:
                        'Comfortable bright two bedroom apartment with garage',
                    text2: 'Wardour Street,Soho,W1F',
                    imageUrl:
                        'https://images.unsplash.com/photo-1459767129954-1b1c1f9b9ace?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Popular',
                  style: AppTextStyle.primaryText,
                ),
                Text(
                  'Newest',
                  style: HintTextStyle.primaryText,
                ),
              ],
            ),
             HomePopularWidget(
                      text: 'Furnished two bedroom apartment glass house',
                      text1: 'Wardour Street,Soho,W1F',
                      text2: '\u{20AC}${2.445}pem',
                      imageUrl:
                          'https://images.unsplash.com/photo-1605545258459-f10109449620?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1868&q=80',
                    ),
             HomePopularWidget(
                      text: 'Comfortable bright two bedroom apartment with garage',
                      text1: 'Wardour Street,Soho,W1F',
                      text2: '\u{20AC}${2.145}pem',
                      imageUrl:
                          'https://images.unsplash.com/photo-1560184897-ae75f418493e?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Nnx8cmVhbCUyMGVzdGF0ZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
                    ),
               HomePopularWidget(
                      text: 'Comfortable bright two bedroom apartment with garage',
                      text1: 'Wardour Street,Soho,W1F',
                      text2: '\u{20AC}${2.445}pem',
                      imageUrl:
                          'https://images.unsplash.com/photo-1459767129954-1b1c1f9b9ace?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
                    ),          ],
        ),
      ),
    );
  }
}

