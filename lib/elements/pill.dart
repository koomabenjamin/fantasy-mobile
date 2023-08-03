import 'package:fantasy/utils/styles.dart';
import 'package:flutter/material.dart';

class Pill extends StatelessWidget {
  final Map<String, dynamic> category;
  const Pill({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        margin: const EdgeInsets.only(right: 2, left: 10),
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Icon(Icons.search_outlined),
                Text(category['name'], style: Styles.textSm.copyWith(color: Colors.black))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
