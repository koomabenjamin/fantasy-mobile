import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: ListView(
        children: [
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Good Morning"),
                    Image.asset("https://upload.wikimedia.org/wikipedia/commons/8/8b/Cristiano_Ronaldo_WC2022_-_01_%28cropped%29.jpg")
                  ],
                ),
            ]),
          ),
        ],
      ),
    );
  }
}
