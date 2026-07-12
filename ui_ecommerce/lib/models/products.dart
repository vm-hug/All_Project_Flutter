class Product {
  final String name;
  final String category;
  final double price;
  final double? oldPrice;
  final String imageUrl;
  final bool isFavorite;
  final String description;
  Product({
    required this.name,
    required this.category,
    required this.price,
    this.oldPrice,
    required this.imageUrl,
    this.isFavorite = false,
    required this.description,
  });
}

final List<Product> products = [
  Product(
    name: 'Shoes',
    category: 'Footwear',
    price: 69.00,
    oldPrice: 189.00,
    isFavorite: true,
    imageUrl: 'assets/images/shoe.jpg',
    description: 'This is description of the product 1',
  ),
  Product(
    name: 'Laptop',
    category: 'Electronic',
    price: 69.00,
    imageUrl: 'assets/images/laptop.jpg',
    description: 'This is description of the product 2',
  ),
  Product(
    name: 'Jordan Shoes',
    category: 'Footwear',
    price: 69.00,
    oldPrice: 189.00,
    imageUrl: 'assets/images/shoe2.jpg',
    description: 'This is description of the product 3',
  ),
  Product(
    name: 'Puma',
    category: 'Footwear',
    price: 69.00,
    oldPrice: 189.00,
    imageUrl: 'assets/images/shoes2.jpg',
    description: 'This is description of the product 4',
  ),
];
