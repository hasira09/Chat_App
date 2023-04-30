import 'package:chat_app/MainScreens/HomePage.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'ChatScreen1.dart';
import 'Profile.dart';
import 'Settings.dart';
import 'VideoCall.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List Screens = [
    ChatScreen1(),
    VideoCall(),
    HomePage1(),
    Profile(),
    Settings(),
  ];

  int _selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double navBarHeight = size.height * 0.07;
    double iconSize = size.width * 0.06;

    return Scaffold(
      extendBody: true,
      bottomNavigationBar: CurvedNavigationBar(
        index: _selectedIndex,
        items: [
          SvgPicture.asset(
            "assets/Icons/ChatIcon.svg",
            height: iconSize,
          ),
          SvgPicture.asset(
            "assets/Icons/VideoIcon.svg",
            height: iconSize,
          ),
          SvgPicture.asset(
            "assets/Icons/Home.svg",
            height: iconSize,
          ),
          SvgPicture.asset(
            "assets/Icons/Profileicon.svg",
            height: iconSize,
          ),
          SvgPicture.asset(
            "assets/Icons/SettingsIcon.svg",
            height: iconSize,
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 350),
        height: navBarHeight,
        backgroundColor: Colors.transparent,
        color: Colors.black,

      ),
      body: Screens[_selectedIndex],
    );
  }
}
