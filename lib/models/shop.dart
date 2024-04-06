import 'package:fultter_e_commerce/models/product.dart';

class Shop {
  // products for sale
  final List<Product> _shop = [
    Product(
      name: "Product 1",
      price: 99.99,
      description: "Item description...",
    ),
    Product(
      name: "Product 1",
      price: 99.99,
      description: "Item description...",
    ),
    Product(
      name: "Product 1",
      price: 99.99,
      description: "Item description...",
    ),
    Product(
      name: "Product 1",
      price: 99.99,
      description: "Item description...",
    ),
    Product(
      name: "Product 1",
      price: 99.99,
      description: "Item description...",
    ),
  ];

  // User Cart
  final List<Product> _cart = [];

  // Shop getter
  List<Product> get shop => _shop;

  // Product getter
  List<Product> get cart => _cart;

  // Add to cart
  void addToCart(Product item) {
    _cart.add(item);
  }

  // Remove from cart
  void removeFromCart(Product item) {
    _cart.remove(item);
  }
}
