import 'package:flutter/material.dart';
import 'package:uix/constants/strings.dart';
import 'package:uix/models/jobs.dart';
import 'package:uix/models/jobs_list.dart';
import 'package:uix/utils/colors.dart';

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
                        AppbarWidget(),
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
                        SearchWidget(size: size),
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
