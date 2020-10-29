import 'package:flutter/material.dart';
import 'package:uix/utils/colors.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
            child: SizedBox(
              height: 30,
              width: 50,
              child: Material(
                elevation: 2,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 1,
                        width: 15,
                        color: Colors.red,
                        margin: const EdgeInsets.all(1),
                      ),
                      Container(
                        height: 1,
                        width: 9,
                        color: Colors.red,
                        margin: const EdgeInsets.all(1),
                      ),
                      Container(
                        height: 1,
                        width: 7,
                        color: Colors.red,
                        margin: const EdgeInsets.all(1),
                      )
                    ],
                  ),
                ),
              ),
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
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: SizedBox(
              height: 40,
              width: 40,
              child: CircleAvatar(
                backgroundColor: BlueColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
