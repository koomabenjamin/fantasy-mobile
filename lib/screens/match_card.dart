import 'package:fantasy/utils/app_layout.dart';
import 'package:fantasy/utils/styles.dart';
import 'package:flutter/material.dart';

class MatchCard extends StatelessWidget {
  final Map<String, dynamic> match;
  const MatchCard({Key? key, required this.match}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width - 20,
      height: 190,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        margin: const EdgeInsets.only(right: 2, left: 10),
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // TODO: Row for header information
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Time: ${match['matchTime']}", style: Styles.textSmBlack),
                Text("Date: ${match['matchDay']}", style: Styles.textSmBlack),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Win probability: ${match['matchProbability']}", style: Styles.textSmBlack),
              ],
            ),
            // TODO: Row for Teams information
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Image.asset(
                //     "assets/images/teams/afc_bournemouth_logo_490x490.png"),
                // Image.asset(
                //     "assets/images/teams/Manchester-United-FC-logo-490x490.png"),
                Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: const Border(),
                    image:  DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: AssetImage("assets/images/teams/${match['matchTeamsLogos']['team']}"),
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "Vs",
                    style: Styles.textLg,
                  ),
                ),
                Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: AssetImage("assets/images/teams/${match['matchTeamsLogos']['opponent']}"),
                    ),
                  ),
                ),
              ],
            ),
            // TODO: Row for Scheduling information
            Row(),
          ],
        ),
      ),
    );
  }
}
