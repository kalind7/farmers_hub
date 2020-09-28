import 'package:farmers_hub/model/order.dart';

class User{
  final String userName;
  final List<Order> orders;
  final List<Order> cart;

  User({
    this.userName,
    this.cart,
    this.orders
  });
}