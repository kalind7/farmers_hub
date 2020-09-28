import 'package:farmers_hub/model/foodItem.dart';

class Restaurant{
  final String imageUrl;
  final String restaurantName;
  final String address;
  final int rating;
  final List<FoodItem> menu;

  Restaurant({
    this.imageUrl,
    this.restaurantName,
    this.address,
    this.menu,
    this.rating});
}