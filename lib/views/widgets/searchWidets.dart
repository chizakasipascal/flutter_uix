import 'package:flutter/material.dart';
import 'package:uix/utils/colors.dart';
import 'package:uix/views/widgets/buttom_app_bar_shadow.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
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
                labelStyle:
                    TextStyle(color: BlackColor, fontWeight: FontWeight.w500),
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
    );
  }
}
