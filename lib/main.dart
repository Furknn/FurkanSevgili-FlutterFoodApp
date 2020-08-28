import 'package:flutter/material.dart';
import 'package:food_app/buy_food.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FoodViewMain(),
    );
  }
}
