import 'package:flutter/material.dart';
import 'package:ui_dentict/widgets/health_need_item.dart';

// ignore: must_be_immutable
class HealthNeed extends StatelessWidget {
  HealthNeed({super.key});

  List<CustomIcon> customIcons = [
    CustomIcon(name: "Appoinment", icon: 'assets/appointment.png'),
    CustomIcon(name: "Hospital", icon: 'assets/hospital.png'),
    CustomIcon(name: "Covid-19", icon: 'assets/virus.png'),
    CustomIcon(name: "More", icon: 'assets/more.png'),
  ];

  List<CustomIcon> iconsHealth = [
    CustomIcon(name: "Appoinment", icon: 'assets/appointment.png'),
    CustomIcon(name: "Hospital", icon: 'assets/hospital.png'),
    CustomIcon(name: "Covid-19", icon: 'assets/virus.png'),
    CustomIcon(name: "Pharmacy", icon: 'assets/drug.png'),
  ];

  List<CustomIcon> iconsSpecialised = [
    CustomIcon(name: "Diabetes", icon: 'assets/blood.png'),
    CustomIcon(name: "Heath care", icon: 'assets/health_care.png'),
    CustomIcon(name: "Dental", icon: 'assets/tooth.png'),
    CustomIcon(name: "Insured", icon: 'assets/insurance.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(customIcons.length, (index) {
        return Column(
          children: [
            InkWell(
              onTap: () {
                if (index == customIcons.length - 1) {
                  showModalBottomSheet(
                    backgroundColor: Colors.white,
                    showDragHandle: true,
                    context: context,
                    builder: (context) {
                      return Container(
                        height: 350,
                        width: double.infinity,
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Health Needs",
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            SizedBox(height: 15),
                            HealthNeedItem(icons: iconsHealth),
                            SizedBox(height: 30),
                            Text(
                              "Specialised Care",
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            SizedBox(height: 15),
                            HealthNeedItem(icons: iconsSpecialised),
                          ],
                        ),
                      );
                    },
                  );
                }
              },
              borderRadius: BorderRadius.circular(90),
              child: Container(
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
