import 'package:farmers_hub/model/foodItem.dart';
import 'package:farmers_hub/model/restaurant.dart';

class Order{
  final Restaurant restaurant;
  final FoodItem foodItem;
  final String date;
  final int quantity;

  Order({
    this.restaurant,
    this.foodItem,
    this.date,
    this.quantity
  });
}