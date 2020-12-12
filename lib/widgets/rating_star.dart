import 'package:flutter/material.dart';

class RatingStar extends StatelessWidget {
  int stars;
  RatingStar({this.stars});
  @override
  Widget build(BuildContext context) {
    String star = "⭐";
    for(int i=1 ; i<stars; i++){
      star = star+"⭐";
    }
    return Text(star, style: TextStyle(fontSize: 20.0),);
  }
}
