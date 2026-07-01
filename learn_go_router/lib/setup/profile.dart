import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart' show GoRouterHelper;

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.go('/');
          },
          child: const Text("Go to Dashboard"),
        ),
      ),
    );
  }
}
