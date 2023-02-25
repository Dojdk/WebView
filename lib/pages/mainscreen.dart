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
          padding: const EdgeInsets.all(16.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
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
