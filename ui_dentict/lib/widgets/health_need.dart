import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HealthNeed extends StatelessWidget {
  HealthNeed({super.key});

  List<CustomIcon> customIcons = [
    CustomIcon(name: "Appoinment", icon: 'assets/appointment.png'),
    CustomIcon(name: "Hospital", icon: 'assets/hospital.png'),
    CustomIcon(name: "Covid-19", icon: 'assets/virus.png'),
    CustomIcon(name: "More", icon: 'assets/more.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(customIcons.length, (index) {
        return Column(
          children: [
            Container(
              width: 60,
              height: 60,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(
                  context,
                ).colorScheme.primaryContainer.withValues(alpha: 0.4),
              ),
              child: Image.asset(customIcons[index].icon),
            ),
            SizedBox(height: 5),
            Text(customIcons[index].name),
          ],
        );
      }),
    );
  }
}

class CustomIcon {
  final String name;
  final String icon;
  CustomIcon({required this.name, required this.icon});
}
