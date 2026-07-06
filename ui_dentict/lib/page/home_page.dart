import 'package:flutter/material.dart';
import 'package:ui_dentict/widgets/health_need.dart';
import 'package:ui_dentict/widgets/nearby_doctor.dart';
import 'package:ui_dentict/widgets/upcoming_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hi, Hung"),
            Text(
              "How are you feeling today?",
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
      ),

      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          // upcoming card
          UpcomingCard(),
          SizedBox(height: 20),
          Text("Health Needs", style: Theme.of(context).textTheme.titleLarge),
          SizedBox(height: 15),
          // heatlth Needs
          HealthNeed(),
          SizedBox(height: 20),
          Text("Nearby Doctor", style: Theme.of(context).textTheme.titleLarge),
          SizedBox(height: 15),
          // Nearby Doctor
          NearbyDoctor(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_outlined),
            label: 'chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: 'profile',
          ),
        ],
      ),
    );
  }
}
