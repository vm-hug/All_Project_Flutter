enum OrderStatus { active, completed, cancelled }

class Orders {
  final String OrderNumber;
  final int itemCount;
  final double totalAmout;
  final OrderStatus status;
  final String imageUrl;
  final DateTime orderDate;
  Orders({
    required this.OrderNumber,
    required this.itemCount,
    required this.totalAmout,
    required this.status,
    required this.imageUrl,
    required this.orderDate,
  });

  String get statusString => status.name;
}
