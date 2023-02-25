import 'package:flutter/foundation.dart';

import '../models/sport.dart';

class SportProvider with ChangeNotifier {
  final List<Sport> _sportData = [
    Sport(
      name: 'Football',
      imageUrl:
          'https://www.myactivesg.com/-/media/SSC/Consumer/Images/Sports/Football/Defenders.ashx?la=en&hash=F6C7BD10385CD33EE08711B1A0B8859620730D80',
      achievements: [
        'Brazil won the World Cup a record 5 times',
        'The fastest goal ever scored was in 2.8 seconds',
        'Cristiano Ronaldo has scored over 700 career goals',
        'Pele scored 1281 goals in his career',
        'The highest-scoring game in history was 149-0',
        'The oldest player to score in a World Cup was 42 years old',
        'The World Cup has been held 21 times',
        'The World Cup trophy is made of solid gold',
      ],
    ),
    Sport(
      name: 'Basketball',
      imageUrl:
          'https://imageio.forbes.com/specials-images/imageserve/638cf443916e2608bdce91a5/Cavaliers-Warriors-Basketball/960x0.jpg?format=jpg&width=960',
      achievements: [
        'Michael Jordan won 6 NBA championships',
        'Wilt Chamberlain scored 100 points in a single game',
        'Kareem Abdul-Jabbar is the NBA’s all-time leading scorer',
        'LeBron James is the youngest player to reach 30,000 points',
        'Larry Bird won 3 consecutive NBA MVP awards',
        'The Boston Celtics have won the most NBA championships with 17',
        'Shaquille O’Neal won 4 NBA championships with 3 different teams',
        'The NBA’s first Slam Dunk Contest was held in 1984',
      ],
    ),
    Sport(
      name: 'Tennis',
      imageUrl:
          'https://cdn.britannica.com/57/183257-050-0BA11B4B/Roger-Federer-2012.jpg',
      achievements: [
        'Roger Federer has won the most Grand Slam titles with 20',
        'Serena Williams has won 23 Grand Slam singles titles',
        'Rafael Nadal has won 13 French Open titles',
        'Martina Navratilova won 9 Wimbledon singles titles',
        'Steffi Graf won the Golden Slam in 1988',
        'Pete Sampras won 14 Grand Slam singles titles',
        'Billie Jean King won 20 Wimbledon titles in singles, doubles, and mixed doubles',
        'Novak Djokovic won all 4 Grand Slam tournaments in a calendar year in 2021',
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
