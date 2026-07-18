import 'dart:io';

import 'package:ui_ecommerce/features/myOrders/models/order.dart';

class OrderRepository {
  List<Orders> getOrders() {
    return [
      Orders(
        OrderNumber: '123432',
        itemCount: 2,
        totalAmout: 2938.3,
        status: OrderStatus.active,
        imageUrl: 'assets/images/laptop.jpg',
        orderDate: DateTime.now().subtract(Duration(hours: 2)),
      ),
      Orders(
        OrderNumber: '4528455',
        itemCount: 1,
        totalAmout: 29.3,
        status: OrderStatus.completed,
        imageUrl: 'assets/images/mastercard.png',
        orderDate: DateTime.now().subtract(Duration(hours: 1)),
      ),
      Orders(
        OrderNumber: '4685874',
        itemCount: 2,
        totalAmout: 1475.3,
        status: OrderStatus.active,
        imageUrl: 'assets/images/shoe2.jpg',
        orderDate: DateTime.now().subtract(Duration(hours: 7)),
      ),
      Orders(
        OrderNumber: '4346434',
        itemCount: 1,
        totalAmout: 55.3,
        status: OrderStatus.cancelled,
        imageUrl: 'assets/images/shoe.jpg',
        orderDate: DateTime.now().subtract(Duration(hours: 6)),
      ),
    ];
  }

  List<Orders> getOrderStatus(OrderStatus status) {
    return getOrders().where((order) => order.status == status).toList();
  }
}
