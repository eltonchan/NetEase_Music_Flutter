import 'package:flutter/material.dart';
// import '../config.dart';

class Item extends StatelessWidget {
  final String imgUrl;
  final String description;

  Item(this.imgUrl, this.description);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: new Column(
        children: <Widget>[
          new Container(
            height: 118,
            width: 118,
            margin: EdgeInsets.only(bottom: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(6.0)),
              child: new Image.asset(
                imgUrl,
                height: 118,
                width: 118,
                fit: BoxFit.cover,
              ),
            )
          ),
          new Container(
            alignment: Alignment.topLeft,
            height: 40,
            margin: EdgeInsets.only(bottom: 18, left: 5),
            child: new Text(
              description, 
              textAlign: TextAlign.left,
              style: new TextStyle(fontSize: 14.0)
            ),
          ),
      ],
    ));
  }
}