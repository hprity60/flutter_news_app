import 'package:flutter/material.dart';
import 'package:flutter_news_app/features/home/presentation/view/home_page.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case HomePage.id:
        //  final args = routeSettings.arguments as ArgModel;
        return MaterialPageRoute(builder: (_) => HomePage());
      
      default:
        return null;
    }
  }
}
