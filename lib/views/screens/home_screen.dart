import 'package:flutter/material.dart';
import 'package:uix/models/jobs.dart';
import 'package:uix/utils/colors.dart';
import 'package:uix/views/widgets/buttom_app_bar_shadow.dart';

class HomeScree extends StatefulWidget {
  final Jobs job;

  const HomeScree({Key key, this.job}) : super(key: key);
  @override
  _HomeScreeState createState() => _HomeScreeState();
}

class _HomeScreeState extends State<HomeScree> {
  final String user =
      "https://media-exp1.licdn.com/dms/image/C4D03AQHNEd3zvvw3_A/profile-displayphoto-shrink_200_200/0?e=1608768000&v=beta&t=Mt_YXhoNeUbTLK_OF2Fyuxd8J46DWqA4MSBPNjjFFsc";

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
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
                ButtomAppBarShawdow(
                  color: BlueColor,
                  widget: Image.network(user),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Goodmoning Pascal",
              style: TextStyle(
                color: BlackColor.withOpacity(.5),
                fontSize: 18.0,
              ),
            ),
            Text(
              "Find your\nCREATE JOBS",
              style: TextStyle(
                color: BlackColor,
                fontWeight: FontWeight.w900,
                fontSize: 30.0,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 60.0,
                  width: size.width - 110,
                  decoration: BoxDecoration(
                    color: WhiteColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: TextField(
                      maxLength: 10,
                      decoration: InputDecoration(
                        counterText: '',
                        border: InputBorder.none,
                        labelText: "Seach for Jobsd",
                        labelStyle: TextStyle(
                            color: BlackColor, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
                ButtomAppBarShawdow(
                  backgroung: BlackColor,
                  widget: Icon(
                    Icons.graphic_eq_outlined,
                    color: WhiteColor,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
