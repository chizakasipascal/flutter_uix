import 'package:flutter/material.dart';
import 'package:uix/constants/strings.dart';
import 'package:uix/models/jobs.dart';
import 'package:uix/models/jobs_list.dart';
import 'package:uix/utils/colors.dart';
import 'package:uix/views/widgets/buttom_app_bar_shadow.dart';
import 'package:uix/views/widgets/cart_job.dart';
import 'package:uix/views/widgets/background.dart';

class HomeScree extends StatefulWidget {
  @override
  _HomeScreeState createState() => _HomeScreeState();
}

class _HomeScreeState extends State<HomeScree> {
  final List<Jobs> jobs = JobsList.getJobs();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          BuildBackground(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: ListView(
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
                      widget: Image.network(
                        Strings.user,
                        fit: BoxFit.cover,
                      ),
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
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular Jobs",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: BlackColor,
                          fontSize: 18.0),
                    ),
                    Text(
                      "show all",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        color: BlackColor.withOpacity(.5),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      width: size.width * .8,
                      height: 180,
                      decoration: BoxDecoration(
                        color: BlueColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Senior UIX Designer",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                Icon(
                                  Icons.branding_watermark,
                                  color: WhiteColor,
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "40-120 hour",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: WhiteColor.withOpacity(.4),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Text(
                                    "Full",
                                    style: TextStyle(
                                      color: BlackColor,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 50,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: WhiteColor.withOpacity(.4),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Icon(
                                    Icons.description,
                                    color: WhiteColor,
                                  ),
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "Channel",
                                      style: TextStyle(
                                        color: WhiteColor,
                                      ),
                                    ),
                                    Text(
                                      "San Diego",
                                      style: TextStyle(
                                        color: WhiteColor,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "4 days",
                                  style: TextStyle(
                                    color: Colors.red,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
