import 'package:flutter/material.dart';
import 'package:pass_data_previous_screen/main_router.gr.dart';

void main() {
  runApp(MyApp(mainRouter: MainRouter()));
}

class MyApp extends StatelessWidget {
  final MainRouter mainRouter;

  MyApp({
    Key? key,
    required this.mainRouter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Pass data back',
      routeInformationParser: mainRouter.defaultRouteParser(),
      routerDelegate: mainRouter.delegate(),
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        appBarTheme: AppBarTheme(foregroundColor: Colors.white),
      ),
      //home: const MainPage(),
    );
  }
}
