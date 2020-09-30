import 'package:farmers_hub/model/foodItem.dart';
import 'package:farmers_hub/model/order.dart';
import 'package:farmers_hub/model/restaurant.dart';
import 'package:farmers_hub/model/user.dart';

//FoodItem
final _burger =
    FoodItem(imageUrl: 'images/burger.jpg', foodName: 'Burger',cost: 150, type: 'Breakfast');
final _burrito =
    FoodItem(imageUrl: 'images/burrito.jpg',foodName: 'Burrito', cost: 175, type: 'Breakfast');
final _pancakes =
    FoodItem(imageUrl: 'images/pancakes.jpg',foodName: 'Pancakes', cost: 75, type: 'Breakfast');
final _pasta =
    FoodItem(imageUrl: 'images/pasta.jpg',foodName: 'Pasta', cost: 225, type: 'Breakfast');
final _pizza =
    FoodItem(imageUrl: 'images/pizza.jpg',foodName: 'Pizza', cost: 250, type: 'Breakfast');
final _ramen =
    FoodItem(imageUrl: 'images/ramen.jpg',foodName: 'Ramen', cost: 125, type: 'Breakfast');

//Restaurant
final _restaurant0 = Restaurant(
  imageUrl: 'assets/images/restaurant0.jpg',
  restaurantName: 'Restaurant 0',
  address: 'Thamel,ktm',
  rating: 5,
  menu: [_burrito,  _pasta, _ramen, _pancakes, _burger, _pizza],
);
final _restaurant1 = Restaurant(
  imageUrl: 'assets/images/restaurant0.jpg',
  restaurantName: 'Restaurant 1',
  address: 'Gaushala,ktm',
  rating: 5,
  menu: [_burrito,  _pasta, _ramen, _pancakes, _burger, _pizza],
);
final _restaurant2 = Restaurant(
  imageUrl: 'assets/images/restaurant0.jpg',
  restaurantName: 'Restaurant 1',
  address: 'Gaushala,ktm',
  rating: 5,
  menu: [_burrito,  _pasta, _ramen, _pancakes, _burger, _pizza],
);
final List<Restaurant> restaurants = [
  _restaurant0,
  _restaurant1,
  _restaurant2,
];

//User
final currentUser = User(
  userName: 'Adarsha',
  orders: [
    Order(
      date: 'Sept 10, 2020',
      foodItem: _burrito,
      restaurant: _restaurant1,
      quantity: 1,
    ),
    Order(
      date: 'Sept 8, 2020',
      foodItem: _ramen,
      restaurant: _restaurant0,
      quantity: 3,
    ),
    Order(
      date: 'Sept 5, 2020',
      foodItem: _burger,
      restaurant: _restaurant2,
      quantity: 2,
    ),
    Order(
      date: 'Sept 2, 2020',
      foodItem: _pasta,
      restaurant: _restaurant1,
      quantity: 1,
    ),
    Order(
      date: 'Sept 1, 2020',
      foodItem: _pancakes,
      restaurant: _restaurant0,
      quantity: 1,
    ),
  ],
  cart: [
    Order(
      date: 'Oct 11, 2020',
      foodItem: _burger,
      restaurant: _restaurant2,
      quantity: 2,
    ),
    Order(
      date: 'Nov 11, 2020',
      foodItem: _pasta,
      restaurant: _restaurant0,
      quantity: 1,
    ),
    Order(
      date: 'Nov 11, 2020',
      foodItem: _ramen,
      restaurant: _restaurant1,
      quantity: 1,
    ),
    Order(
      date: 'Nov 11, 2020',
      foodItem: _pancakes,
      restaurant: _restaurant2,
      quantity: 3,
    ),
    Order(
      date: 'Nov 11, 2020',
      foodItem: _burrito,
      restaurant: _restaurant1,
      quantity: 2,
    ),
  ],
);