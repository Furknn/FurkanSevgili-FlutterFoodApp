import 'dart:math';

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
    return Column(
      children: [row1Builder(), row2Builder(), bottomColumn()],
    );
  }

  Column bottomColumn() => Column(children: [row3Builder()]);

  Row row3Builder() => Row(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(30, 30, 0, 0),
            height: MediaQuery.of(context).size.height * 0.075,
            width: MediaQuery.of(context).size.width * 0.1,
            color: Colors.red,
            child: Icon(
              Icons.favorite,
              color: Colors.white,
            ),
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Popular",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ))
        ],
      );

  SizedBox row2Builder() => SizedBox(
        height: MediaQuery.of(context).size.height * 0.3,
        child: ListView.builder(
          itemCount: 100,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Card(
                margin: EdgeInsets.fromLTRB(15, 15, 15, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Column(
                    children: [
                      Expanded(flex: 2, child: Placeholder()),
                      Expanded(
                          flex: 1,
                          child: ListTile(
                              title: Text("Sweets"),
                              subtitle: Text("12 items")))
                    ],
                  ),
                ));
          },
        ),
      );

  Row row1Builder() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: Text(
              "What do you want to \neat today ?",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              maxLines: 2,
              overflow: TextOverflow.visible,
            ),
          ),
          IconButton(onPressed: null, icon: Icon(Icons.search))
        ],
      );

  AppBar appBarBuilder() => AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: null,
          ),
          actions: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Transform.rotate(
                      angle: pi,
                      child: IconButton(
                          icon: Icon(Icons.short_text), onPressed: null))
                ],
              ),
            )
          ]);
}
