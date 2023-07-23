import 'package:fantasy/utils/app_layout.dart';
import 'package:fantasy/utils/styles.dart';
import 'package:flutter/material.dart';

class MatchCard extends StatelessWidget {
  const MatchCard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white54,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // TODO: Row for header information
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Time:", style: Styles.textSmBlack),
                Text("Win probability:", style: Styles.textSmBlack),
                Text("Date:", style: Styles.textSmBlack),
              ],
            ),
            // TODO: Row for Teams information
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Image.asset(
                //     "assets/images/teams/afc_bournemouth_logo_480x480.png"),
                // Image.asset(
                //     "assets/images/teams/Manchester-United-FC-logo-480x480.png"),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: const Border(),
                    image: const DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: AssetImage(
                          "assets/images/teams/afc_bournemouth_logo_480x480.png"),
                    ),
                  ),
                ),
                Container(
                  child: Text("Vs", style: Styles.textLg,),
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: AssetImage(
                          "assets/images/teams/Manchester-United-FC-logo-480x480.png"),
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
