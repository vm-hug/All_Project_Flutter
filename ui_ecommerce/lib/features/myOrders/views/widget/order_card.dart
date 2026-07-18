import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_ecommerce/features/myOrders/models/order.dart';
import 'package:ui_ecommerce/utils/app_textstyles.dart';

class OrderCard extends StatelessWidget {
  final Orders orders;
  final VoidCallback onViewDeatil;

  const OrderCard({
    super.key,
    required this.orders,
    required this.onViewDeatil,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Container(
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: isDark
                ? Colors.black.withValues(alpha: 0.2)
                : Colors.grey.withValues(alpha: 0.1),
            blurRadius: 8,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: AssetImage(orders.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Order # ${orders.OrderNumber}',
                        style: AppTextstyles.withColor(
                          AppTextstyles.h3,
                          Theme.of(context).textTheme.bodyLarge!.color!,
                        ),
                      ),

                      SizedBox(height: 4),
                      Text(
                        '${orders.itemCount} item . \$${orders.totalAmout.toStringAsFixed(2)}',
                        style: AppTextstyles.withColor(
                          AppTextstyles.bodyMedium,
                          isDark ? Colors.grey[400]! : Colors.grey[600]!,
                        ),
                      ),

                      SizedBox(height: 8),
                      _buildStatusChip(context, orders.statusString),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Divider(height: 1, color: Colors.grey.shade200),
          InkWell(
            onTap: onViewDeatil,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: Text(
                'View Details',
                style: AppTextstyles.withColor(
                  AppTextstyles.buttonMedium,
                  Theme.of(context).primaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatusChip(BuildContext context, String type) {
    Color getSatusColor() {
      switch (type) {
        case 'active':
          return Colors.blue;
        case 'completed':
          return Colors.green;
        case 'cancelled':
          return Colors.red;
        default:
          return Colors.grey;
      }
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        color: getSatusColor().withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        type.capitalize!,
        style: AppTextstyles.withColor(
          AppTextstyles.bodySmall,
          getSatusColor(),
        ),
      ),
    );
  }
}
