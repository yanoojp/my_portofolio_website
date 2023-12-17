import 'package:go_router/go_router.dart';
import 'package:my_portfolio_website/views/about_me.dart';

final routes = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const AboutMe(),
    ),
  ],
);
