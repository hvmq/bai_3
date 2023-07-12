import 'package:flutter/material.dart';

class TogglePlay extends StatefulWidget {
  const TogglePlay({super.key});

  @override
  State<TogglePlay> createState() => _TogglePlayState();
}

bool play = false;

class _TogglePlayState extends State<TogglePlay> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          play = !play;
        });
      },
      child: Image.asset(
        play == false ? "assets/play.png" : "assets/pause.png",
        width: 50,
        height: 50,
      ),
    );
  }
}
