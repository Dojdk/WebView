import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import '../providers/sportprovider.dart';

import '../widgets/achievementslistitem.dart';

class SportInfoScreen extends StatelessWidget {
  static const routeName = '/sportinfo';
  const SportInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sportName = ModalRoute.of(context)!.settings.arguments as String;
    final sport = Provider.of<SportProvider>(context).findByName(sportName);
    return Scaffold(
        appBar: AppBar(
          title: Text('${sport.name} Facts'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: sport.achievements.length,
            itemBuilder: (context, index) {
              return AchievementListItem(
                achievement: sport.achievements[index],
              );
            },
          ),
        ));
  }
}
