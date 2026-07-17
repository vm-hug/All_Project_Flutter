import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_ecommerce/features/notifications/models/notification_type.dart';
import 'package:ui_ecommerce/features/notifications/repositories/notification_repository.dart';
import 'package:ui_ecommerce/features/notifications/utils/notification_utils.dart';
import 'package:ui_ecommerce/utils/app_textstyles.dart';

class NotificationScreen extends StatelessWidget {
  final NotificationRepository _repository = NotificationRepository();
  NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final notifications = _repository.getNotifications();

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(
            Icons.arrow_back_ios,
            color: isDark ? Colors.white : Colors.black,
          ),
        ),
        title: Text(
          'Notification',
          style: AppTextstyles.withColor(
            AppTextstyles.h3,
            isDark ? Colors.white : Colors.black,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Mark all as read',
              style: AppTextstyles.withColor(
                AppTextstyles.bodyMedium,
                Theme.of(context).primaryColor,
              ),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: notifications.length,
        itemBuilder: (context, index) =>
            _buildNotificationCard(context, notifications[index]),
      ),
    );
  }

  Widget _buildNotificationCard(
    BuildContext context,
    NotificationItem notification,
  ) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: notification.isRead
            ? Theme.of(context).cardColor
            : Theme.of(context).primaryColor.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(color: isDark ? Colors.grey[400]! : Colors.grey[600]!),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: ListTile(
          contentPadding: EdgeInsets.all(16),
          leading: Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: NotificationUtils.getIconBackgroundColor(
                context,
                notification.type,
              ),
              shape: BoxShape.circle,
            ),
            child: Icon(
              NotificationUtils.getNotificationIcon(notification.type),
              color: NotificationUtils.getIconColor(context, notification.type),
            ),
          ),
          title: Text(
            notification.title,
            style: AppTextstyles.withColor(
              AppTextstyles.bodyLagre,
              Theme.of(context).textTheme.bodyLarge!.color!,
            ),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 4),
              Text(
                notification.message,
                style: AppTextstyles.withColor(
                  AppTextstyles.bodySmall,
                  isDark ? Colors.grey[400]! : Colors.grey[600]!,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
