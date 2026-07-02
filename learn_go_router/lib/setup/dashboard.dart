import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart' show GoRouterHelper;
import 'package:learn_go_routers/router_name.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dashboard")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                context.goNamed(
                  RouterName.profileQuery,
                  queryParameters: {'name': 'Minh Hung Query'},
                );
              },
              child: const Text("Go to Profile"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String name = "Minh Hung Parameter"; // Example name parameter
                context.goNamed(
                  RouterName.profile,
                  pathParameters: {'name': name},
                );
              },
              child: const Text("Go to Profile Parameter"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.goNamed(RouterName.login);
              },
              child: const Text("Logout"),
            ),
          ],
        ),
      ),
    );
  }
}
