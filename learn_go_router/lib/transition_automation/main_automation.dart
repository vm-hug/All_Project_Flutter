import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart'
    show CustomTransitionPage, GoRoute, GoRouter;
import 'package:learn_go_routers/router_name.dart';
import 'package:learn_go_routers/setup/dashboard.dart';
import 'package:learn_go_routers/setup/profile.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(title: "Demo Go Router", routerConfig: _router);
  }

  final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        name: RouterName.dashboard,
        path: '/',
        builder: (context, state) => Dashboard(),
      ),
      GoRoute(
        name: RouterName.profileQuery,
        path: '/profile',
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            key: state.pageKey,
            child: ProfileQuery(name: "Minh Hung"),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
                  return FadeTransition(
                    opacity: CurveTween(
                      curve: Curves.easeInCubic,
                    ).animate(animation),
                    child: child,
                  );
                },
          );
        },
      ),
    ],
  );
}
