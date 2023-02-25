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
        body: Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background.jpg'),
              fit: BoxFit.cover)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: sport.achievements.length + 1,
          itemBuilder: (context, index) {
            return index == 0
                ? Row(
                    children: [
                      IconButton(
                          onPressed: () => Navigator.of(context).pop(),
                          icon: const Icon(Icons.arrow_back_ios)),
                      Text(
                        '${sport.name} Achievements',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  )
                : AchievementListItem(
                    achievement: sport.achievements[index - 1],
                  );
          },
        ),
      ),
    ));
  }
}
