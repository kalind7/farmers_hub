import 'package:farmers_hub/datas/data_all.dart';
import 'package:farmers_hub/model/restaurant.dart';
import 'package:farmers_hub/widgets/rating_star.dart';
import 'package:flutter/material.dart';

class NearByRestaurants extends StatelessWidget {
  @override

  _buildRestaurant(){
    List<Widget> restaurantList = [];

    restaurants.forEach((Restaurant restaurant) {

      restaurantList.add(
        GestureDetector(
          onTap: (){},
          child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Colors.white,
            border: Border.all(width: 1.0, color: Colors.grey[200]),
          ),

          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image(
                  height: 150,
                  width: 150,
                  fit: BoxFit.cover,
                  image: AssetImage(restaurant.imageUrl),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(restaurant.restaurantName, style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),),
                    SizedBox(height: 4.0),


                    RatingStar(stars: restaurant.rating,),
                    SizedBox(height: 4),
                    Text(restaurant.address,  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),),
                    SizedBox(height: 4.0),
                  ],
                ),
              ),

            ],
          ),

      ),
        ),
      );
    });
    return restaurantList;
  }

  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'Nearby Restaurants',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.w600, letterSpacing: 1.0),
          ),
        ),

        Column(
          children: _buildRestaurant(),

        )
      ],
    );
  }
}
