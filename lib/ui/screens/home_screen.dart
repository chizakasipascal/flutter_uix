import 'package:flutter/material.dart';
import 'package:uix/models/jobs.dart';
import 'package:uix/ui/widgets/appBarWidget.dart';
import 'package:uix/ui/widgets/background.dart';
import 'package:uix/ui/widgets/card_offres.dart';
import 'package:uix/ui/widgets/jobs_widgets.dart';
import 'package:uix/ui/widgets/searchWidets.dart';
import 'package:uix/utils/colors.dart';

class HomeScree extends StatefulWidget {
  @override
  _HomeScreeState createState() => _HomeScreeState();
}

class _HomeScreeState extends State<HomeScree> {
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
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    child: Row(
                      children: [
                        for (final job in allJobs)
                          CardOffres(
                            size: size,
                            jobs: job,
                          ),
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
