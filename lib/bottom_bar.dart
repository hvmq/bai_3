import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        color: Color(0xFF222B45),
        backgroundColor: Colors.blueAccent,
        buttonBackgroundColor: Colors.red,
        items: <Widget>[
          Image.asset("assets/home.png", width: 20, height: 20,),
          Image.asset("assets/fire.png", width: 20, height: 20,),
          Image.asset("assets/compass.png", width: 20, height: 20,),
          Image.asset("assets/message.png", width: 20, height: 20,),
          Image.asset("assets/person.png", width: 20, height: 20,)
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
      body: Container(color: Colors.blueAccent),
    );
  }
}
