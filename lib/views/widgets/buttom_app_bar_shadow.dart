import 'package:flutter/material.dart';
import 'package:uix/utils/colors.dart';

class ButtomAppBarShawdow extends StatelessWidget {
  final Widget widget;
  final Color color;
  final Color backgroung;
  const ButtomAppBarShawdow({
    Key key,
    this.widget,
    this.color,
    this.backgroung,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            height: 60.0,
            width: 60.0,
            decoration: BoxDecoration(
              color: backgroung,
              boxShadow: [
                BoxShadow(
                  color: BlueColor.withOpacity(.7),
                  blurRadius: .3,
                  offset: Offset(1, 1),
                )
              ],
            ),
            child: widget,
          ),
        ),
        Positioned(
          right: 0,
          top: -2,
          child: Container(
            height: 10.0,
            width: 10.0,
            decoration: BoxDecoration(color: color, shape: BoxShape.circle),
          ),
        ),
      ],
    );
  }
}
