import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../providers/sportprovider.dart';

import '../widgets/griditem.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sportData = Provider.of<SportProvider>(context).sportData;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background.jpg'),
                fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0, left: 16, right: 16),
          child: ListView.builder(
            itemCount: sportData.length,
            itemBuilder: (context, index) {
              return GridItem(
                imageUrl: sportData[index].imageUrl,
                name: sportData[index].name,
              );
            },
          ),
        ),
      ),
    );
  }
}
