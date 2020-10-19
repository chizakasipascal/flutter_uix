import 'package:flutter/material.dart';
import 'package:uix/utils/colors.dart';

class HomeScree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
            child: Row(
              children: [
                Container(
                  height: 60.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                      color: WhiteColor,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: BlueColor.withOpacity(.5),
                            blurRadius: .3,
                            offset: Offset(1, 1))
                      ]),
                  child: Icon(Icons.square_foot),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
