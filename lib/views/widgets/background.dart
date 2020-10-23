import 'package:flutter/material.dart';

class BuildBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/images/background_images.png",
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
