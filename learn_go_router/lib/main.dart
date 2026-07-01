import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_go_routers/setup/dashboard.dart';
import 'package:learn_go_routers/setup/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(title: "Demo Go Router", routerConfig: _router);
  }

  final GoRouter _router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(path: '/', builder: (context, state) => const Dashboard()),
      GoRoute(path: '/profile', builder: (context, state) => const Profile()),
    ],
  );
}
