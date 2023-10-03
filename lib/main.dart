import 'package:flutter/material.dart';
import 'package:flutter_news_app/core/routes/app_router.dart';
import 'package:flutter_news_app/features/home/presentation/view/home_page.dart';

void main() {
  runApp( MyApp(appRouter: AppRouter(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.appRouter});
  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
      ),
      initialRoute: HomePage.id,
      onGenerateRoute: appRouter.onGenerateRoute,
      home: HomePage(),
    );
  }
}

