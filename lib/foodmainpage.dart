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

  Column bottomColumn() =>
      Column(children: [row3Builder(), bottomListBuilder()]);

  SizedBox bottomListBuilder() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              isThreeLine: false,
              leading: Container(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.1,
                color: Colors.blue,
              ),
            ),
          );
        },
      ),
    );
  }

  Container row3Builder() => Container(
          child: ListTile(
        leading: Container(
          height: MediaQuery.of(context).size.height * 0.1,
          width: MediaQuery.of(context).size.width * 0.1,
          color: Colors.red,
          child: Icon(
            Icons.favorite,
            color: Colors.white,
          ),
        ),
        title: Text(
          "Popular",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text("Popular Items"),
        trailing: IconButton(
          icon: Icon(Icons.arrow_forward),
          onPressed: null,
        ),
      ));

  SizedBox row2Builder() => SizedBox(
        height: MediaQuery.of(context).size.height * 0.3,
        child: ListView.builder(
          itemCount: 20,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Card(
                margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Column(
                    children: [
                      Expanded(flex: 7, child: Placeholder()),
                      Expanded(
                          flex: 4,
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
