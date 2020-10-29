import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uix/app_state.dart';
import 'package:uix/models/jobs.dart';
import 'package:uix/models/offres.dart';
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
      body: ChangeNotifierProvider<AppState>(
        create: (_) => AppState(),
        child: SafeArea(
          child: Stack(
            children: [
              BuildBackground(),
              SingleChildScrollView(
                child: Column(
                  children: [
                    // AppbarWidget(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
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
                      child: Consumer<AppState>(
                        builder: (BuildContext context, appstate, _) => Row(
                          children: [
                            for (final offre in alloffres)
                              CardOffres(
                                size: size,
                                offres: offre,
                              ),
                          ],
                        ),
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
                    for (final job in allJobs)
                      JobsListWidgts(
                        jobs: job,
                      ),
                  ],
                ),
              ),
              SizedBox(
                height: 60,
                width: 60,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FloatingActionButton(
                    elevation: 2,
                    backgroundColor: WhiteColor,
                    onPressed: () {},
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 1,
                          width: 15,
                          color: BlueColor,
                          margin: const EdgeInsets.all(1),
                        ),
                        Container(
                          height: 1,
                          width: 9,
                          color: BlueColor,
                          margin: const EdgeInsets.all(1),
                        ),
                        Container(
                          height: 1,
                          width: 7,
                          color: BlueColor,
                          margin: const EdgeInsets.all(1),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SearchIndices extends StatelessWidget {
  const SearchIndices({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.search,
          size: 16,
          color: BlackColor,
        ),
        Text(
          "Job title ",
          style: TextStyle(
            fontSize: 10,
            color: BlackColor,
          ),
        )
      ],
    );
  }
}
