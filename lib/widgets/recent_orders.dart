import 'package:farmers_hub/datas/data_all.dart';
import 'package:farmers_hub/model/order.dart';
import 'package:flutter/material.dart';

class RecentOrder extends StatelessWidget {
  @override
  _buildRecentOrders(BuildContext context, Order order) {
    return Container(
      margin: EdgeInsets.all(15.0),
      width: 320,
      decoration: BoxDecoration(
        color: Colors.white,
        //border: Border.all(width: 1.0, color: Colors.black),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image(
                    height: 100.0,
                    width: 100.0,
                    fit: BoxFit.cover,
                    image: AssetImage(order.foodItem.imageUrl),
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.0),
                          child: Column(
                            children: [
                              Text(
                                order.foodItem.foodName,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 3.0,
                              ),
                              Text(
                                order.restaurant.restaurantName,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 3.0,
                              ),
                              Text(
                                order.date,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 20.0),
            width: 48.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              color: Theme.of(context).primaryColor,
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.add),
              color: Colors.white,
              iconSize: 30.0,
            ),
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
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            'Recent Orders',
            style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w600),
          ),
        ),
        Container(
          height: 120.0,
          padding: EdgeInsets.only(left: 10.0),
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              itemCount: currentUser.orders.length,
              itemBuilder: (context, position) {
                Order order = currentUser.orders[position];
                return _buildRecentOrders(context, order);
              }),
        ),
      ],
    );
  }
}
