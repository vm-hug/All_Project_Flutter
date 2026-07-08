import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_dentict/widgets/appointment_card.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    // Bỏ Scaffold để lồng mượt mà vào MainLayout
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        CupertinoSlidingSegmentedControl(
          padding: const EdgeInsets.all(5),
          groupValue: activeIndex,
          children: const {
            0: Text("Upcoming"),
            1: Text("Complete"),
            2: Text("Results"),
          },
          onValueChanged: (value) {
            setState(() {
              activeIndex = value!;
            });
          },
        ),
        const SizedBox(height: 5),
        const AppointmentCard(),
      ],
    );
  }
}
