
import 'package:flutter/material.dart';
import 'package:spacex_app/core/routing/routes.dart';
import 'package:spacex_app/features/category/presentation/screens/category_screen.dart';
import 'package:spacex_app/features/home/presentation/screens/home_screen.dart';
import 'package:spacex_app/features/list_screen/presentation/screens/list_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // case Routes.onBoardingScreen:
      //   return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.categoryScreen:
        return MaterialPageRoute(builder: (_) => const CategoryScreen());
      case Routes.listScreen:
      String titleScreen = settings.arguments as String;
        return MaterialPageRoute(builder: (_) => ListScreen(titleScreen: titleScreen,));
            default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(
                child: Text('No route defined for ${settings.name}'),
              ),
            ));
    }
  }
}