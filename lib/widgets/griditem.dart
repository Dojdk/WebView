import 'package:flutter/material.dart';
import 'package:webview/pages/sportinfoscreen.dart';

class GridItem extends StatelessWidget {
  final String name;
  final String imageUrl;
  const GridItem({super.key, required this.name, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .pushNamed(SportInfoScreen.routeName, arguments: name);
      },
      child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.network(imageUrl, fit: BoxFit.cover),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(name,
                      style: TextStyle(
                          color: Colors.purple[700],
                          fontSize: 30,
                          fontWeight: FontWeight.w700))),
            ],
          )),
    );
  }
}
