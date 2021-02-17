import 'package:flutter/material.dart';
import 'package:real_estate_app/pages/search_page/search_page_components/search_page_components.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: AppColor.primaryColor,
          title: Container(
            height: 60,
            margin: EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 20.0,
            ),
            decoration: BoxDecoration(
             borderRadius: AppBorder.ternaryContainer,
              color: AppColor.primaryColor,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'type f.e. district,property type',
                      hintStyle: HintTextStyle.primaryText,
                      icon: Icon(
                        Icons.search,
                        color: IconColor.primaryColor,
                        size: 20,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          actions: [
            Icon(
              Icons.filter_list,
              color: IconColor.secondaryColor,
            ),
          ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: Text(
                'Popular in London',
                style: AppTextStyle.primaryText,
              ),
              trailing: Wrap(
                children: [
                  Icon(Icons.menu),                  
                 Text('Map')
                ],
              ),
            ),
            SearchItemWidget(
              text: '\u{20AC}${2.445}pem',
              text1: 'Furnished two bedroom apartment glass house',
              text2: 'Wardour Street,Soho,W1F',
              imageUrl:
                  'https://images.unsplash.com/photo-1605545258459-f10109449620?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1868&q=80',
            ),
            SearchItemWidget(
              text: '\u{20AC}${2.145}pem',
              text1: 'Comfortable bright two bedroom apartment with garage',
              text2: 'Wardour Street,Soho,W1F',
              imageUrl:
                  'https://images.unsplash.com/photo-1560184897-ae75f418493e?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Nnx8cmVhbCUyMGVzdGF0ZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
            ),
            SearchItemWidget(
              text: '\u{20AC}${2.145}pem',
              text1: 'Comfortable bright two bedroom apartment with garage',
              text2: 'Wardour Street,Soho,W1F',
              imageUrl:
                  'https://images.unsplash.com/photo-1459767129954-1b1c1f9b9ace?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
            ),
          ],
        ),
      ),
    );
  }
}
