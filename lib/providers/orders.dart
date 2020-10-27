import 'package:flutter/foundation.dart';
import 'package:flutter_shop_app/providers/cart.dart';

class OrderItem {
  final String id;
  final double amoount;
  final List<CartItem> products;
  final DateTime dateTime;

  OrderItem(
      {@required this.id,
      @required this.amoount,
      @required this.products,
      @required this.dateTime});
}

class Orders with ChangeNotifier {
  List<OrderItem> _orders = [];

  List<OrderItem> get orders {
    return [..._orders];
  }

  void addOrder(List<CartItem> cartProducts, double total) {
    _orders.insert(
      0,
      OrderItem(
          id: DateTime.now().toString(),
          amoount: total,
          products: cartProducts,
          dateTime: DateTime.now()),
    );
    notifyListeners();
  }
}
