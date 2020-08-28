import 'package:flutter/material.dart';

class FoodViewMain extends StatefulWidget {
  FoodViewMain({Key key}) : super(key: key);

  @override
  FoodViewMainState createState() => FoodViewMainState();
}

class FoodViewMainState extends State<FoodViewMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: appBarBuilder(), body: bodyColumnBuilder());
  }

  Column bodyColumnBuilder() {
    return Column(children: [Container(color: Colors.black)]);
  }

  AppBar appBarBuilder() => AppBar(
        backgroundColor: Colors.red,
      );
}
