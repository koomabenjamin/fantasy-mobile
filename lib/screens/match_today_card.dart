import 'package:fantasy/utils/styles.dart';
import 'package:flutter/material.dart';

class MatchTodayCard extends StatelessWidget {
  final Map<String, dynamic> match;
  const MatchTodayCard({Key? key, required this.match}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(3.0),
      padding: EdgeInsets.symmetric(horizontal: 10),
      // decoration: BoxDecoration(
      //   boxShadow: 
      // ),
      child: Column(
        children: [
          Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                // border: Border(
                //   right: BorderSide(color: Colors.blue, width: 5.0),
                //   left: BorderSide(color: Colors.red, width: 5.0),
                // ),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 160,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          match['matchTeams']['team'],
                          style: Styles.textSm.copyWith(color: Colors.black),
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: const Border(),
                            image: DecorationImage(
                              fit: BoxFit.fitHeight,
                              image: AssetImage(
                                  "assets/images/teams/${match["matchTeamsLogos"]["team"]}"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 50,
                    child: Container(
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.greenAccent[400]
                      ),
                      child: 
                        Text(match["matchTime"], textAlign: TextAlign.center, style: Styles.textSm.copyWith(color: Colors.green[900])
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 160,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: const Border(),
                              image: DecorationImage(
                                fit: BoxFit.fitHeight,
                                image: AssetImage(
                                    "assets/images/teams/${match["matchTeamsLogos"]["opponent"]}"),
                              ),
                            ),
                          ),
                          Text(
                            match['matchTeams']['opponent'],
                            style: Styles.textSm.copyWith(color: Colors.black),
                          ),
                        ]),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
