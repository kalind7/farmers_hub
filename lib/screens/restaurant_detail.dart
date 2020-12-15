import 'package:farmers_hub/model/foodItem.dart';
import 'package:farmers_hub/model/restaurant.dart';
import 'package:farmers_hub/widgets/rating_star.dart';
import 'package:farmers_hub/widgets/recent_orders.dart';
import 'package:flutter/material.dart';

class RestaurantDetails extends StatefulWidget {
  final Restaurant restaurant;
  RestaurantDetails({this.restaurant});

  @override
  _RestaurantDetailsState createState() => _RestaurantDetailsState();
}

class _RestaurantDetailsState extends State<RestaurantDetails> {
  Color _iconColor = Colors.white;

  @override
  _buildFoodMenu(FoodItem foodItem) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 175.0,
            width: 175.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(foodItem.imageUrl),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),

          Container(
            height: 175.0,
            width: 175.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.black12, Colors.black26, Colors.black38],
                stops: [0.1, 0.2, 0.3],
              ),
            ),
          ),

          Positioned(
            bottom: 70,
            child: Column(
              children: [
                Text(foodItem.foodName, style: TextStyle(fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 2.0)),
                Text('Rs ${foodItem.cost.toString()}', style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.white)),
              ],
            ),
          ),

          Positioned(
            bottom: 10,
              right:0.5,
          child: AddIcon(),
          ),
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Hero(
                tag: widget.restaurant.imageUrl,
                child: Image(
                  height: 200.0,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  fit: BoxFit.cover,
                  image: AssetImage(widget.restaurant.imageUrl),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 13.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      color: Colors.white,
                      iconSize: 25.0,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.favorite),
                      color: _iconColor,
                      iconSize: 25.0,
                      onPressed: () {
                        setState(() {
                          if (_iconColor == Colors.white) {
                            _iconColor = Colors.red;
                          } else {
                            _iconColor = Colors.white;
                          }
                        });
                      },
                    ),
                  ],
                ),
              ),

            ],
          ),

          Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(widget.restaurant.restaurantName, style: TextStyle(
                        fontSize: 22.0, fontWeight: FontWeight.bold),),
                    Text('0.2 km away', style: TextStyle(
                        fontSize: 18.0, fontWeight: FontWeight.w600)),
                  ],
                ),
                SizedBox(height: 4.0),
                Text(widget.restaurant.address, style: TextStyle(
                    fontSize: 18.0, fontWeight: FontWeight.w600)),
                SizedBox(height: 4.0),
                RatingStar(stars: widget.restaurant.rating),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FlatButton(
                onPressed: () {},
                color: Theme
                    .of(context)
                    .primaryColor,
                splashColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)
                ),
                child: Text('Review',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
              ),
              FlatButton(
                  onPressed: () {},
                  color: Theme
                      .of(context)
                      .primaryColor,
                  splashColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)
                  ),
                  child: Text('Contacts', style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w600))),
            ],
          ),

          SizedBox(height: 10.0),

          Text('MENU',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),),

          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(widget.restaurant.menu.length, (index) {
                FoodItem fooditem = widget.restaurant.menu[index];

                return _buildFoodMenu(fooditem);
              }),
            ),
          ),
        ],
      ),
    );
  }
}
