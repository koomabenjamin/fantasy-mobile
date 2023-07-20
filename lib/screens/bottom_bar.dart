import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  // const appTitle String = "Fantasy football application"

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fantasy football application"),
        backgroundColor: Colors.amber,
      ),
      body:  Text('List of players'),
      // bottomNavigationBar: ,
    );
  }
}
