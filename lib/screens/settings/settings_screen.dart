import 'package:fantasy/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Settings", style: Styles.textLg),
        backgroundColor: Colors.pink[900],
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Manage Settings",
                        style: Styles.textXl.copyWith(color: Colors.black),
                      ),
                      Text(
                        "Access to all in-app controls and more...",
                        style: Styles.textSm.copyWith(color: Colors.black),
                      ),
                    ],
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: AssetImage("assets/images/logo.png"),
                      ),
                    ),
                  ),
                ],
              ),
              const Gap(20),

              Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: const DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: AssetImage("assets/images/logo.png"),
                      ),
                    ),
                  ),
                  const Gap(10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Benjamin Kooma", style: Styles.textLg.copyWith(color: Colors.black)),
                      Text("@benjaminKooma", style: Styles.textBase.copyWith(color: Colors.black, fontWeight: FontWeight.normal)),
                      Text("benjamin.kooma@gmail.com", style: Styles.textSm.copyWith(color: Colors.black, fontWeight: FontWeight.normal))
                    ],
                  ),
                ],
              )
            ]),
          ),
        ],
      ),
    );
  }
}
