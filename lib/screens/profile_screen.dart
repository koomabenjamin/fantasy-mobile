import 'package:fantasy/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fantasy football application", style: Styles.textLg),
        backgroundColor: Colors.pink[900],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Full Name',
                  prefixIcon: Icon(Icons.person_2_outlined)),
            ),
            const Gap(10),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                  prefixIcon: Icon(Icons.alternate_email)),
            ),
            const Gap(10),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.password_outlined)),
            ),
            const Gap(10),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Confirm Password',
                  prefixIcon: Icon(Icons.password_outlined)),
            ),
            const Gap(10),
            ElevatedButton(
              onPressed: () {},
              onLongPress: () {},
              onFocusChange: (value) {},
              onHover: (value) {},
              style: ElevatedButton.styleFrom(
                onPrimary: Colors.white,
                primary: Colors.cyan[300],
                minimumSize: const Size(88, 36),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(2)),
                ),
              ),
              child: const Text('Update Personal Info'),
            ),
          ],
        ),
      ),
    );
  }
}
