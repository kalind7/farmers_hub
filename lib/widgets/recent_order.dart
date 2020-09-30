import 'package:farmers_hub/datas/data_all.dart';
import 'package:farmers_hub/model/order.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecentOrder extends StatelessWidget {
  @override
    dynamic _buildRecentOrder(Order order){
        return Container(
          margin: EdgeInsets.all(10),
          width: 320,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(width: 1.0, color: Colors.grey[100]),
          ),
          child: Row(
            children: [
              Image(
                height: 100,
                width: 100,
                fit: BoxFit.cover,
                image: AssetImage(order.foodItem.imageUrl),
              ),
              Column(
                children: [
                  Text(order.foodItem.foodName, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                  Text(order.restaurant.restaurantName, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                  Text('Quantity:${order.quantity.toString()}', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                ],

              ),

            ],
          ),
        );
  }
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20),
            child: Text('Recent Order', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),)

        ),
        Container(
          height: 120,

          child: ListView.builder(
              itemCount: currentUser.orders.length,
              itemBuilder:(context,position){
                Order order = currentUser.orders[position];

                return _buildRecentOrder(order);
              }
          ),
        )
      ],
    );
  }
}
