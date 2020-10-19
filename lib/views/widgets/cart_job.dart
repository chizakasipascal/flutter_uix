import 'package:flutter/material.dart';
import 'package:uix/models/jobs.dart';
import 'package:uix/utils/colors.dart';
import 'package:uix/views/widgets/buttom_app_bar_shadow.dart';

class CardJobs extends StatelessWidget {
  final Jobs jobs;
  const CardJobs({
    Key key,
    this.jobs,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Card(
        elevation: 2,
        child: Container(
          height: 200.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "${jobs.description}",
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: BlackColor,
                          fontSize: 18.0),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "${jobs.montant}",
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: BlackColor,
                          fontSize: 18.0),
                    ),
                    Text(
                      "${jobs.hour}",
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: BlackColor,
                          fontSize: 18.0),
                    ),
                  ],
                ),
                Row(
                  children: [
                    ButtomAppBarShawdow(
                      backgroung: BlueColor,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${jobs.entreprise}",
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              color: BlackColor,
                              fontSize: 18.0),
                        ),
                        Row(
                          children: [
                            Text(
                              "${jobs.ville}",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: BlackColor,
                                  fontSize: 18.0),
                            ),
                            Text(
                              "${jobs.dureOffret}",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: BlackColor,
                                  fontSize: 18.0),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
