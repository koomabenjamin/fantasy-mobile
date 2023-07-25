import 'package:fantasy/samples/data_fetch.dart';
import 'package:fantasy/screens/home_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  // const appTitle String = "Fantasy football application"

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  void _onItemSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const DataFetch(),
    const Text("Play"),
    const Text("Profile"),
    const Text("Settings"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Fantasy football application"),
      //   backgroundColor: Colors.amber,
      // ),
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemSelected,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.indigoAccent,
        unselectedItemColor: const Color(0xff526480),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            activeIcon: Icon(Icons.home_filled),
            label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            label: "Search",
            activeIcon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_soccer_outlined),
            label: "Play",
            activeIcon: Icon(Icons.sports_soccer),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Profile",
            activeIcon: Icon(Icons.person),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: "Settings",
            activeIcon: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}
