import 'package:flutter/material.dart';
import 'package:ui_dentict/widgets/health_need.dart';
import 'package:ui_dentict/widgets/nearby_doctor.dart';
import 'package:ui_dentict/widgets/upcoming_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Bỏ Scaffold, chỉ giữ lại phần nội dung chính
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        // upcoming card
        const UpcomingCard(),
        const SizedBox(height: 20),
        Text("Health Needs", style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 15),
        // health Needs
        HealthNeed(),
        const SizedBox(height: 20),
        Text("Nearby Doctor", style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 15),
        // Nearby Doctor
        const NearbyDoctor(),
      ],
    );
  }
}
