import 'package:flutter/material.dart';
import 'package:uix/utils/colors.dart';

class ButtomAppBarShawdow extends StatelessWidget {
  final Widget widget;
  const ButtomAppBarShawdow({
    Key key,
    this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          color: WhiteColor,
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
    );
  }
}
