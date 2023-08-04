import 'package:fantasy/utils/data/players.dart';
import 'package:fantasy/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PlayerCard extends StatelessWidget {
  final Map<String, dynamic> player;
  const PlayerCard({Key? key, required this.player}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
      padding: EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        children: [
          // TODO: Player avatar
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: Colors.amber, width: 5),
              image: const DecorationImage(
                fit: BoxFit.fitHeight,
                image: AssetImage("assets/images/logo.png"),
              ),
            ),
          ),
          const Gap(10),
          // TODO: Player details
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Lionel Messi",
                  style: Styles.textLg.copyWith(
                    color: Colors.black,
                  )),
              Text("Striker @LA. galatics",
                  style: Styles.textBase.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 13
                  )),
              Text("---------------------",
                  style: Styles.textBase.copyWith(
                    color: Colors.black,
                  )),
              Text("4000 caps | 20 Trophies | 1 World Cup",
                  style: Styles.textSm.copyWith(
                      color: Colors.black, fontWeight: FontWeight.normal)),
            ],
          ),
          // TODO: Player ratings
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.amber[900],
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: Colors.black, width: 5),
            ),
          ),
        ],
      ),
    );
  }
}
