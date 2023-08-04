import 'package:fantasy/utils/data/players.dart';
import 'package:fantasy/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class NewsFeedCard extends StatelessWidget {
  final Map<String, dynamic> newsfeed;
  const NewsFeedCard({Key? key, required this.newsfeed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 70,
                width: 70,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Benjamin Kooma",
                          style: Styles.textBase
                              .copyWith(color: Colors.black, fontSize: 17)),
                      Text("@benjaminkooma",
                          style: Styles.textBase
                              .copyWith(color: Colors.blue[800], fontSize: 14)),
                    ],
                  ),
                  Text("widget"),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Text(
                  "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                  style: Styles.textSm.copyWith(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.normal)),
              const Gap(10),
              Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.amber, width: 2),
                  image: const DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: AssetImage("assets/images/wallpaper.png"),
                  ),
                ),
              ),
              const Gap(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("10:20AM, Aug 4th, 2023",
                      style: Styles.textBase.copyWith(color: Colors.black54)),
                  const Icon(Icons.info_outline_rounded, color: Colors.black54),
                ],
              ),
            ],
          ),
          const Gap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(Icons.favorite_border_outlined,
                      color: Colors.black54),
                  Text("14.1K"),
                ],
              ),
              Row(
                children: [
                  const Icon(Icons.chat_bubble_outline, color: Colors.black54),
                  Text("800"),
                ],
              ),
              Row(
                children: [
                  const Icon(Icons.tag_outlined, color: Colors.black54),
                  Text("300K"),
                ],
              ),
              Row(
                children: [
                  const Icon(Icons.share_outlined, color: Colors.black54),
                  Text("1M"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
