import 'package:flutter/material.dart';
import 'package:ui_dentict/widgets/health_need.dart';

// ignore: must_be_immutable
class HealthNeedItem extends StatelessWidget {
  HealthNeedItem({super.key, required this.icons});

  List<CustomIcon> icons;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(icons.length, (index) {
        return Column(
          children: [
            Container(
              width: 55,
              height: 55,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(
                  context,
                ).colorScheme.primaryContainer.withValues(alpha: 0.4),
              ),
              child: Image.asset(icons[index].icon),
            ),
            SizedBox(height: 5),
            Text(icons[index].name),
          ],
        );
      }),
    );
  }
}
