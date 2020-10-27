import 'package:flutter/material.dart';
import 'package:uix/utils/colors.dart';
import 'package:uix/ui/widgets/buttom_app_bar_shadow.dart';

class JobsListWidgts extends StatelessWidget {
  const JobsListWidgts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("Senior ux desing"),
      subtitle: Row(
        children: [
          Text(
            "Channel",
            style: TextStyle(color: WhiteColor),
          ),
          Text(
            "-",
            style: TextStyle(color: WhiteColor),
          ),
          Text(
            "full time",
            style: TextStyle(color: WhiteColor),
          ),
          Spacer(),
          Text(
            "17days",
            style: TextStyle(
                color: BlueColor, fontSize: 10.0, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      leading: ButtomAppBarShawdow(
        backgroung: BlackColor,
        widget: Icon(
          Icons.work,
          color: WhiteColor,
        ),
      ),
    );
  }
}
