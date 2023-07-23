import 'package:fantasy/screens/match_card.dart';
import 'package:fantasy/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[500],
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Good Morning",
                        style: Styles.textBase,
                      ),
                      Text(
                        "Welcome back to Fantasy...",
                        style: Styles.textLg,
                      ),
                    ],
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: AssetImage("assets/images/logo.png"),
                      ),
                    ),
                  ),
                ],
              ),
              const Gap(20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    Text("Search", style: Styles.textSmBlack)
                  ],
                ),
              ),
              const Gap(40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Upcoming Matches..",
                    style: Styles.textBase,
                  ),
                  InkWell(
                    onTap: () {
                      print("I see you want to view all upcoming matches..");
                    },
                    child: Text(
                      "View all",
                      style: Styles.textSm.copyWith(color: Colors.amberAccent),
                    ),
                  ),
                ],
              ),
            ]),
          ),
          MatchCard()
        ],
      ),
    );
  }
}
