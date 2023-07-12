import 'package:flutter/material.dart';


class ToggleHeart extends StatefulWidget {
  const ToggleHeart({super.key});

  @override
  State<ToggleHeart> createState() => _ToggleHeartState();
}

bool like = false;

class _ToggleHeartState extends State<ToggleHeart> {

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: like == false
          ? const Icon(
              Icons.favorite_border,
              color: Colors.white,
            )
          : const Icon(
              Icons.favorite,
              color: Colors.red,
            ),
      onPressed: () {
        setState(() {
          like = !like;
        });
      },
    );
  }
}
