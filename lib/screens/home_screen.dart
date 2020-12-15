import 'package:farmers_hub/datas/data_all.dart';
import 'package:farmers_hub/screens/cart_details.dart';
import 'package:farmers_hub/widgets/nearby_restaurants.dart';
import 'package:farmers_hub/widgets/recent_orders.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          iconSize: 30.0,
          icon: Icon(Icons.account_circle),
        ),
        title: Center(child: Text('Food App')),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>CartDetails() ));
            },
            child: Padding(
              padding: EdgeInsets.only(top: 18, right: 7),
              child: Text(
                'cart(${currentUser.cart.length})',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide(
                    width: 5.0,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                contentPadding: EdgeInsets.all(20.0),
                prefixIcon: Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Icon(Icons.search, size: 25.0),
                ),
                hintText: 'Search Food and Drinks.',
                suffixIcon: Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: Icon(
                    Icons.clear,
                    size: 25.0,
                  ),
                ),
              ),
            ),
          ),
          RecentOrder(),

          NearByRestaurants(),
        ],
      ),
    );
  }
}
