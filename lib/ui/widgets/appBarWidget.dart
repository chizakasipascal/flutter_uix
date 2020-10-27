import 'package:flutter/material.dart';
import 'package:uix/constants/strings.dart';
import 'package:uix/ui/widgets/buttom_app_bar_shadow.dart';
import 'package:uix/utils/colors.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ButtomAppBarShawdow(
          backgroung: WhiteColor,
          widget: Icon(
            Icons.local_mall,
            color: BlueColor,
          ),
        ),
        Column(
          children: [
            Text(
              "Job",
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: BlueColor,
                  fontSize: 18.0),
            ),
            Text(
              "creative",
              style: TextStyle(
                color: BlackColor,
                fontSize: 14.0,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 40,
          width: 40,
          child: ButtomAppBarShawdow(
            color: BlueColor,
            // widget: Image.network(
            //   Strings.user,
            //   fit: BoxFit.cover,
            // ),
          ),
        ),
      ],
    );
  }
}
