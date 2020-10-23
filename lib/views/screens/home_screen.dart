import 'package:flutter/material.dart';
import 'package:uix/constants/strings.dart';
import 'package:uix/models/jobs.dart';
import 'package:uix/models/jobs_list.dart';
import 'package:uix/utils/colors.dart';
import 'package:uix/views/widgets/buttom_app_bar_shadow.dart';
import 'package:uix/views/widgets/card_offres.dart';
import 'package:uix/views/widgets/background.dart';
import 'package:uix/views/widgets/jobs_widgets.dart';

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
      body: SafeArea(
        child: Stack(
          children: [
            BuildBackground(),
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 20.0),
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
                            SizedBox(
                              height: 40,
                              width: 40,
                              child: ButtomAppBarShawdow(
                                color: BlueColor,
                                widget: Image.network(
                                  Strings.user,
                                  fit: BoxFit.cover,
                                ),
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
                                        color: BlackColor,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ),
                            ButtomAppBarShawdow(
                              backgroung: BlueColor,
                              widget: Icon(
                                Icons.graphic_eq_outlined,
                                color: WhiteColor,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10),
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
                      ],
                    ),
                  ),
                  // Flexible(
                  //   child: Container(
                  //     child: jobs.length > 0
                  //         ? ListView.builder(
                  //             itemCount: jobs.length,
                  //             itemBuilder: (BuildContext context, i) =>
                  //                 CardOffres(
                  //               size: size,
                  //               jobs: jobs[i],
                  //             ),
                  //           )
                  //         : Container(),
                  //   ),
                  // ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    child: Row(
                      children: [
                        CardOffres(size: size),
                        CardOffres(size: size),
                        CardOffres(size: size),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Recents jobs",
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
                  ),
                  JobsListWidgts(),
                  JobsListWidgts(),
                  JobsListWidgts(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
