import 'package:flutter/material.dart';
import 'package:uix/models/offres.dart';
import 'package:uix/utils/colors.dart';

class CardOffres extends StatelessWidget {
  final Offres offres;
  const CardOffres({
    Key key,
    @required this.size,
    this.offres,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: Stack(
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${offres.description}",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: WhiteColor,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "${offres.subdescritpion}",
                        style: TextStyle(
                          color: WhiteColor,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(width: 5),
                      Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                          color: WhiteColor.withOpacity(.4),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            "Full time",
                            style: TextStyle(
                              color: BlackColor,
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
                          color: WhiteColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.wallet_membership,
                          color: BlueColor,
                        ),
                      ),
                      SizedBox(width: 5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${offres.corporater}",
                            style: TextStyle(
                              color: WhiteColor,
                            ),
                          ),
                          Text(
                            "${offres.location}",
                            style: TextStyle(
                              color: WhiteColor,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Text(
                          "${offres.daysleft}",
                          style: TextStyle(
                            color: WhiteColor,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            child: Container(
              height: 100,
              width: 90,
              decoration: BoxDecoration(
                color: WhiteColor.withOpacity(.2),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
