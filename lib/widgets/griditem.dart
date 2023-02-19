import 'package:flutter/material.dart';
import 'package:webview/pages/sportinfoscreen.dart';

class GridItem extends StatelessWidget {
  final String name;
  const GridItem({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .pushNamed(SportInfoScreen.routeName, arguments: name);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.grey,
        ),
        child: Center(
            child: Text(
          name,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        )),
      ),
    );
  }
}
