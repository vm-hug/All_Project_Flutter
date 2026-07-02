import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_go_routers/router_name.dart';

class ProfileParameter extends StatelessWidget {
  final String name;
  const ProfileParameter({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile Parameter $name")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.goNamed(RouterName.dashboard);
          },
          child: const Text("Go to Dashboard"),
        ),
      ),
    );
  }
}
