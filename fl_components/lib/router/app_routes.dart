import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes{
  static const initialRoute= 'home';
  static final menuOptions= <MenuOption>[
//MenuOption(route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home),
MenuOption(route: 'listview1', name: 'ListView tipo 1', screen: const ListView1Screen(), icon: Icons.list_alt_rounded),
MenuOption(route: 'listview2', name: 'ListView tipo 2', screen: const ListView2Screen(), icon: Icons.list),
MenuOption(route: 'alert', name: 'Alerta', screen: const AlertScreen(), icon: Icons.notification_important),
MenuOption(route: 'card', name: 'Card', screen: const CardScreen(), icon: Icons.credit_card),
MenuOption(route: 'avatar', name: 'Circle Avatar', screen: const AvatarScreen(), icon: Icons.supervised_user_circle_outlined),
MenuOption(route: 'animated', name: 'Animated Container', screen: const AnimatedScreen(), icon: Icons.play_arrow_outlined),
MenuOption(route: 'inputs', name: 'Text Inputs', screen: const InputsScreen(), icon: Icons.input_rounded),
MenuOption(route: 'slider', name: 'Slider', screen: const SliderScreen(), icon: Icons.slow_motion_video_rounded),
MenuOption(route: 'listviewbuilder', name: 'InfiniteScroll & Pull to refresh', screen: const ListViewBuilderScreen(), icon: Icons.build_circle_outlined),



  ];

static Map<String, Widget Function(BuildContext)> getAppRoutes(){

Map<String, Widget Function(BuildContext)> appRoutes={};
appRoutes.addAll({'home': (BuildContext context) =>const HomeScreen()});

for (var option in menuOptions) {
  appRoutes.addAll({option.route: (BuildContext context) =>option.screen});
  
}

  return appRoutes;
}  
 static Route<dynamic> onGenerateRoute (RouteSettings settings) {
      return MaterialPageRoute(
        builder: (context) => const AlertScreen(),
  );
 }

/*
Forma N°1 
  static Map<String, Widget Function(BuildContext)> routes ={
        'home'      : (BuildContext context) =>const HomeScreen(),
        'listview1' : (BuildContext context) =>const ListView1Screen(),
        'listview2' : (BuildContext context) =>const ListView2Screen(),
        'alert'     : (BuildContext context) =>const AlertScreen(),
        'card'      : (BuildContext context) =>const CardScreen(),
      };
  
} */ 
}