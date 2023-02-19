import 'package:flutter/foundation.dart';

import '../models/sport.dart';

class SportProvider with ChangeNotifier {
  final List<Sport> _sportData = [
    Sport(
      name: 'Football',
      achievements: [
        'France won the World Cup in 2018',
        'Portugal won the European Championship in 2016',
      ],
    ),
    Sport(
      name: 'Basketball',
      achievements: [
        'Milwaukee Bucks won the NBA Championship in 2021',
        'USA won the Olympic Gold Medal in 2016',
      ],
    ),
    Sport(
      name: 'Tennis',
      achievements: [
        'Novak Djokovic won Wimbledon in 2022',
        'Emma Raducanu won the US Open in 2021',
      ],
    ),
  ];

  List<Sport> get sportData {
    return [..._sportData];
  }

  Sport findByName(String name) {
    return _sportData.firstWhere((sport) => sport.name == name);
  }
}
