import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_dentict/page/calendar_page.dart';
import 'package:ui_dentict/page/home_page.dart';
import 'package:ui_dentict/router/router_name.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Healder App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Color(0xff5a73d8),
        textTheme: GoogleFonts.plusJakartaSansTextTheme(
          Theme.of(context).textTheme,
        ),
        useMaterial3: true,
      ),
      routerConfig: _router,
    );
  }

  final GoRouter _router = GoRouter(
    initialLocation: '/home',
    routes: [
      GoRoute(
        name: RouterName.homePage,
        path: '/home',
        builder: (context, state) => CalendarPage(),
      ),
      GoRoute(
        name: RouterName.calendarPage,
        path: '/calendar',
        builder: (context, state) => CalendarPage(),
      ),
    ],
  );
}
