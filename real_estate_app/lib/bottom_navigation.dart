import 'package:flutter/material.dart';
import 'package:real_estate_app/pages/home_page/home_page.dart';
import 'package:real_estate_app/pages/liked_page.dart';
import 'package:real_estate_app/pages/message_page.dart';
import 'package:real_estate_app/pages/profile_page.dart';
import 'package:real_estate_app/pages/search_page/search_page.dart';
import 'package:real_estate_app/styles/styles.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    MyHomePage(),
    LikedPage(),
    SearchPage(),
    MessagePage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: _selectedIndex,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColor.secondaryColor,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                size: 30.0,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite,
                  size: 24.0,
                ),
                label: 'liked'),
            BottomNavigationBarItem(
                icon: IconButton(
                  icon:Icon(Icons.search,
                  size: 24.0),
                  onPressed: (){
                    
                  },
                ),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.chat_bubble_outline,
                  size: 24.0,
                ),
                label: 'Message'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline,
                  size: 24.0,
                ),
                label: 'Profile'),
                
          ],
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
