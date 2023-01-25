import 'package:flutter/material.dart';

import 'package:my_app/models/models.dart';
import 'package:my_app/screens/screens.dart';

class AppRoutes {

  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    // Nos queda pendiente borrar home del listado siguiente => ya no, lo dejamos comentado para que no aparezca :D
    // MenuOption(route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home),
    MenuOption(route: 'listview1', name: 'Listview tipo 1', screen: const Listview1Screen(), icon: Icons.list_alt),
    MenuOption(route: 'listview2', name: 'Listview tipo 2', screen: const Listview2Screen(), icon: Icons.list),
    MenuOption(route: 'alert', name: 'Alerts', screen: const AlertScreen(), icon: Icons.add_alert_rounded),
    MenuOption(route: 'card', name: 'Cards', screen: const CardScreen(), icon: Icons.credit_card),
    MenuOption(route: 'avatar', name: 'Circle Avatar', screen: const AvatarScreen(), icon: Icons.supervised_user_circle_outlined),
    MenuOption(route: 'animated', name: 'Animated Container', screen: const AnimatedScreen(), icon: Icons.play_circle_outline_rounded),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {

    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
      
    }

    return appRoutes;
  }

//  static Map<String, Widget Function(BuildContext)> routes = {
//        'home': (BuildContext context) => const HomeScreen(),
//        'listview1': (BuildContext context) => const Listview1Screen(),
//        'listview2': (BuildContext context) => const Listview2Screen(),
//        'alert': (BuildContext context) => const AlertScreen(),
//        'card': (BuildContext context) => const CardScreen()
//      };

  static Route<dynamic> onGenerateRoute (RouteSettings settings) {
    return MaterialPageRoute(
          builder: (context) => const AlertScreen()
        );
  }

}