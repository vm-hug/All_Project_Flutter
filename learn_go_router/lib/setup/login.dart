import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_go_routers/router_name.dart' show RouterName;

class Login extends StatelessWidget {
  bool isLoggedIn;
  Login({super.key, required this.isLoggedIn});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            isLoggedIn = true;
            context.goNamed(RouterName.dashboard);
          },
          child: const Text("Login"),
        ),
      ),
    );
  }
}
