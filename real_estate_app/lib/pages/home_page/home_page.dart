import 'package:flutter/material.dart';
import 'package:real_estate_app/pages/home_page/home_page_components/home_page_components.dart';


class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 350,
            floating: false,
            pinned: true,
            backgroundColor: AppColor.secondaryColor,
            title: Text('Recommended'),
            actions: [
              Icon(Icons.settings)
            ],
           
          ),
          
        ],
      )

    );
  }
}
