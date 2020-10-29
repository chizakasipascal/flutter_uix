import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:uix/app_state.dart';
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
    final appState = Provider.of<AppState>(context);
    final isSelected = appState.selectOffres == offres.offresId;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: size.width * .8,
          height: 180,
          color: WhiteColorBackgroung,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Stack(
              children: [
                Positioned(
                  right: 20,
                  top: -10,
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Lottie.asset("${offres.lottie}", fit: BoxFit.cover),
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "${offres.description}",
                        style: TextStyle(fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 20,
                  child: Text(
                    "${offres.message}",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
