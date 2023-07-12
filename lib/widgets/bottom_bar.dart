
import 'package:bai_3/pages/home_screen_page.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int index = 0;
  final screens = [
    HomeScreen(),
    Container(),
    Container(),
    Container(),
    Container(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          color: Color(0xFF222B45),
          backgroundColor: Color(0xFF192038),
          buttonBackgroundColor: Colors.red,
          items: [
            CurvedNavigationBarItem(
                child: Image.asset(
                  "assets/home.png",
                  width: 20,
                  height: 20,
                ),
                label: "Home",
                labelStyle: index == 0
                    ? const TextStyle(
                        color: Colors.red,
                        fontSize: 11,
                        fontWeight: FontWeight.w500)
                    : TextStyle(
                        color: Colors.white.withOpacity(0.5),
                        fontSize: 11,
                        fontWeight: FontWeight.w500)),
            CurvedNavigationBarItem(
                child: Image.asset(
                  "assets/fire.png",
                  width: 20,
                  height: 20,
                ),
                label: "Trend",
                labelStyle: index == 1
                    ? const TextStyle(
                        color: Colors.red,
                        fontSize: 11,
                        fontWeight: FontWeight.w500)
                    : TextStyle(
                        color: Colors.white.withOpacity(0.5),
                        fontSize: 11,
                        fontWeight: FontWeight.w500)),
            CurvedNavigationBarItem(
                child: Image.asset(
                  "assets/compass.png",
                  width: 20,
                  height: 20,
                ),
                label: "Explore",
                labelStyle: index == 2
                    ? const TextStyle(
                        color: Colors.red,
                        fontSize: 11,
                        fontWeight: FontWeight.w500)
                    : TextStyle(
                        color: Colors.white.withOpacity(0.5),
                        fontSize: 11,
                        fontWeight: FontWeight.w500)),
            CurvedNavigationBarItem(
                child: Image.asset(
                  "assets/message.png",
                  width: 20,
                  height: 20,
                ),
                label: "Chat",
                labelStyle: index == 3
                   ? const TextStyle(
                        color: Colors.red,
                        fontSize: 11,
                        fontWeight: FontWeight.w500)
                    : TextStyle(
                        color: Colors.white.withOpacity(0.5),
                        fontSize: 11,
                        fontWeight: FontWeight.w500)),
            CurvedNavigationBarItem(
                child: Image.asset(
                  "assets/person.png",
                  width: 20,
                  height: 20,
                ),
                label: "Profile",
                labelStyle: index == 4
                    ? const TextStyle(
                        color: Colors.red,
                        fontSize: 11,
                        fontWeight: FontWeight.w500)
                    : TextStyle(
                        color: Colors.white.withOpacity(0.5),
                        fontSize: 11,
                        fontWeight: FontWeight.w500)),
          ],
          onTap: (index) {
            setState(() {
              this.index = index;
            });
          },
        ),
        body: screens[index]);
  }
}
