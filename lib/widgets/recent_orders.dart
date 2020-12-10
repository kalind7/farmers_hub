import 'package:farmers_hub/datas/data_all.dart';
import 'package:farmers_hub/model/order.dart';
import 'package:flutter/material.dart';

class RecentOrder extends StatelessWidget {
  @override

  _buildRecentOrders(Order order){
    return Container(
      margin: EdgeInsets.all(15.0),
      width: 320,
      decoration: BoxDecoration(
        color: Colors.white,
        //border: Border.all(width: 1.0, color: Colors.black),

      ),
      child: Row(
        children: [
          Image(
            height: 100.0,
            width: 100.0,
            fit: BoxFit.cover,
            image: AssetImage(order.foodItem.imageUrl),
          )
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Text('Recent Orders', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w600),),
        ),
        Container(
          height: 120.0,
          child: ListView.builder(
            itemCount: currentUser.orders.length,
            itemBuilder: (context,position){
             Order order =  currentUser.orders[position];
              return _buildRecentOrders(order);
            }
          ),
        ),
      ],
    );
  }
}
