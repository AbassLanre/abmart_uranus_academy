import 'package:abmart_uranus_academy/UI/categories/categories.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'home_screen_home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> widgetOptions = <Widget>[
    HomeScreenHome(),
  CategoryScreen(),
    Text(
      'Index 2: School',
    ),
    Text(
      'Index 3: Settings',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget singleNavBarChild(int index, IconData icon, String title) {
    return GestureDetector(
      onTap: () {
        _onItemTapped(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _selectedIndex == index
              ? Icon(
                  icon,
                  color: kBottomSelectedColor,
                  size: 18.73,
                )
              : Icon(
                  icon,
                  color: kBottomUnSelectedColor,
                  size: 18.73,
                ),
          Text(
            title,
            style: _selectedIndex != index
                ? kVerySmallTextUnSelectedRegular
                : kVerySmallTextSelectedRegular,
          )
        ],
      ),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15, left: 15, right: 15),
      height: MediaQuery.of(context).size.height * 0.0789,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          singleNavBarChild(0, Icons.home_outlined, 'Home'),
          singleNavBarChild(1, Icons.widgets_outlined, 'Categories'),
          singleNavBarChild(2, Icons.person_outline_outlined, 'Profile'),
          singleNavBarChild(3, Icons.help_outline_outlined, 'Help'),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
        body: Center(
          child: widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: buildMyNavBar(context));
  }
}
