import 'package:farmers_hub/datas/data_all.dart';
import 'package:farmers_hub/widgets/recent_order.dart';
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
          onPressed: (){},
          iconSize: 30,
          icon: Icon(Icons.account_circle),
        ),
        title: Center(child: Text('Farmer\'s Hub')),
        actions: <Widget>[

          GestureDetector(
            onTap: (){},
            child: Padding(
                padding: EdgeInsets.only( top: 15, right: 2),
                child: Text('cart(${currentUser.cart.length})',
                  style: TextStyle(fontSize:18.0, fontWeight: FontWeight.w500 ),

                ),
            ),
          ),
        ],
      ),
      body:ListView(
        children: [
          
          Padding(
            padding: EdgeInsets.all(18),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(28),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1.5,
                    color: Theme.of(context).primaryColor,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: 'Search Food or Drinks.',
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.close),

              ),
            ),
          ),

          RecentOrder(),

        ],
      ) ,



    );
  }
}
