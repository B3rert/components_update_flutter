import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <Menuoption>[
    Menuoption(
      route: 'listview1',
      icon: Icons.list,
      name: "List View 1 Screen",
      screen: const Listview1Screen(),
    ),
    Menuoption(
      route: 'listview2',
      icon: Icons.list,
      name: "List View 2 Screen",
      screen: const Listview2Screen(),
    ),
    Menuoption(
      route: 'alert',
      icon: Icons.notifications_rounded,
      name: "Alert Screen",
      screen: const AlertScreen(),
    ),
    Menuoption(
      route: 'card',
      icon: Icons.card_giftcard,
      name: "Card Screen",
      screen: const CardScreen(),
    ),
    Menuoption(
      route: 'avatar',
      icon: Icons.person,
      name: "Avatar Screen",
      screen: const AvatarScreen(),
    ),
    Menuoption(
      route: 'animated',
      icon: Icons.animation,
      name: "Animated Screen",
      screen: const AnimatedScreen(),
    ),
    Menuoption(
      route: 'inputs',
      icon: Icons.input,
      name: "Inputs Screen",
      screen: const InputsScreen(),
    ),
    Menuoption(
      route: 'slider',
      icon: Icons.slideshow_rounded,
      name: "Slider Screen",
      screen: const SliderScreen(),
    ),
    Menuoption(
      route: 'listview3',
      icon: Icons.list,
      name: "ListView Builder Screen",
      screen: const ListviewBuilderScreen(),
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final options in menuOptions) {
      appRoutes
          .addAll({options.route: (BuildContext context) => options.screen});
    }
    return appRoutes;
  }

/*
  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'listview1': (BuildContext context) => const Listview1Screen(),
    'listview2': (BuildContext context) => const Listview2Screen(),
    'alert': (BuildContext context) => const AlertScreen(),
    'card': (BuildContext context) => const CardScreen(),
  };
*/
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    print(settings);
    return MaterialPageRoute(
      builder: (BuildContext context) => const AlertScreen(),
    );
  }
}
