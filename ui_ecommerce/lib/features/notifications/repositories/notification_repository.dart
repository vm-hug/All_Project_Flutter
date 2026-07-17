import 'package:ui_ecommerce/features/notifications/models/notification_type.dart';

class NotificationRepository {
  List<NotificationItem> getNotifications() {
    return [
      NotificationItem(
        title: 'Order Confirmed',
        message: 'Your order #123456 has been confirmed and is begin processed',
        time: '2 minutes ago',
        type: NotificationType.promo,
        isRead: true,
      ),
      NotificationItem(
        title: 'Special Offer',
        message: 'Get 20% off all shoes this weekend!',
        time: '1 hour ago',
        type: NotificationType.payment,
        isRead: true,
      ),
      NotificationItem(
        title: 'Order Confirmed',
        message: 'Your order #123456 has been confirmed and is begin processed',
        time: '2 minutes ago',
        type: NotificationType.delivery,
        isRead: true,
      ),
      NotificationItem(
        title: 'Special Offer',
        message: 'Get 20% off all shoes this weekend!',
        time: '1 hour ago',
        type: NotificationType.order,
        isRead: true,
      ),
    ];
  }
}
