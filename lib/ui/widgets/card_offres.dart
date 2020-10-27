import 'package:flutter/material.dart';
import 'package:uix/models/jobs.dart';
import 'package:uix/utils/colors.dart';

class CardOffres extends StatelessWidget {
  final Jobs jobs;
  const CardOffres({
    Key key,
    @required this.size,
    this.jobs,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: Container(
        width: size.width * .8,
        height: 180,
        decoration: BoxDecoration(
          color: BlueColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    // "Senior UIX Designer",
                    "${jobs.description}",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: WhiteColor,
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
                children: [
                  Text(
                    // "40-120 hour",
                    "${jobs.hour}",
                    style: TextStyle(
                      color: WhiteColor,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(width: 5),
                  Container(
                    height: 30,
                    width: 50,
                    decoration: BoxDecoration(
                      color: WhiteColor.withOpacity(.4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        // "Full",
                        "${jobs.hour}",
                        style: TextStyle(
                          color: WhiteColor,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: 50,
                    width: 70,
                    decoration: BoxDecoration(
                      color: WhiteColor.withOpacity(.4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.description,
                      color: WhiteColor,
                    ),
                  ),
                  SizedBox(width: 5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        // "Channel",
                        "${jobs.description}",
                        style: TextStyle(
                          color: WhiteColor,
                        ),
                      ),
                      Text(
                        // "San Diego",
                        "${jobs.description}",
                        style: TextStyle(
                          color: WhiteColor,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Text(
                    // "4 days",
                    "${jobs.description}",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
