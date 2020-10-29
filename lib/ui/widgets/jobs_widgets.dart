import 'package:flutter/material.dart';
import 'package:uix/models/jobs.dart';
import 'package:uix/utils/colors.dart';
import 'package:uix/ui/widgets/buttom_app_bar_shadow.dart';

class JobsListWidgts extends StatelessWidget {
  final Jobs jobs;
  const JobsListWidgts({
    Key key,
    this.jobs,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(jobs.description),
        subtitle: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "${jobs.subdescription}",
              style: TextStyle(color: BlueColor),
            ),
            Text(
              "-",
              style: TextStyle(color: BlueColor),
            ),
            Text(
              "${jobs.subdescription2}",
              style: TextStyle(color: BlueColor),
            ),
            Spacer(),
            Text(
              "${jobs.daysleft}",
              style: TextStyle(
                  color: BlueColor,
                  fontSize: 10.0,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        leading: CircleAvatar(
          backgroundColor: BlueColor,
          child: Placeholder(),
        ));
  }
}
