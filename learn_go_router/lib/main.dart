import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_go_routers/router_name.dart' show RouterName;
import 'package:learn_go_routers/router_parameter/profile_parameter.dart';
import 'package:learn_go_routers/setup/dashboard.dart';
import 'package:learn_go_routers/setup/error_page.dart' show ErrorPage;
import 'package:learn_go_routers/setup/login.dart' show Login;
import 'package:learn_go_routers/setup/profile.dart';

void main() {
  runApp(MyApp());
}

bool isLoggedIn = false;

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(title: "Demo Go Router", routerConfig: _router);
  }

  final GoRouter _router = GoRouter(
    initialLocation: '/login',
    redirect: (context, state) {
      if (!isLoggedIn) {
        return '/test';
      }
      if (isLoggedIn) {
        return '/dashboard';
      }
      return null;
    },
    errorBuilder: (context, state) => const ErrorPage(),
    routes: [
      GoRoute(
        name: RouterName.login,
        path: '/login',
        builder: (context, state) => Login(isLoggedIn: isLoggedIn),
      ),
      GoRoute(
        name: RouterName.dashboard,
        path: '/dashboard',
        builder: (context, state) => const Dashboard(),
        routes: [
          GoRoute(
            name: RouterName.profileQuery,
            path: '/profile',
            builder: (context, state) =>
                ProfileQuery(name: state.uri.queryParameters['name']!),
          ),
        ],
      ),
      GoRoute(
        name: RouterName.profile,
        path: '/profile/:name',
        builder: (context, state) =>
            ProfileParameter(name: state.pathParameters['name']!),
      ),
    ],
  );
}
