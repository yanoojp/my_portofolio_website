import 'package:flutter/material.dart';
import 'package:my_portfolio_website/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: routes,
    );
  }
}