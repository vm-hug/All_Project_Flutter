import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart' show GoRouterHelper;

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dashboard")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.go('/profile');
          },
          child: const Text("Go to Profile"),
        ),
      ),
    );
  }
}
