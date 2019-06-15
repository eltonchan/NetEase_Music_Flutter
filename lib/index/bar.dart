import 'package:flutter/material.dart';
import '../config.dart';

class BarView extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return new Row(
      children: <Widget>[
        new Container(
          child: new Icon(Icons.mic_none, size: 22.0,),
          margin: const EdgeInsets.only(right: 26.0),
        ),
        new Expanded(
          child: new TextField(
            autofocus: false,
            textAlign: TextAlign.center,
            decoration: new InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                prefixIcon: new Icon(Icons.search, size: 22.0, color: GlobalConfig.fontColor,),
                hintText: "晴天 - 周杰伦",
                hintStyle: new TextStyle(color: GlobalConfig.fontColor),
                fillColor: Colors.grey[200],
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide.none
                ),
            ),
          ),
        ),
        new Container(
          child: new FlatButton(
            onPressed: (){},
            child: new Icon(Icons.menu, size: 22.0),
          ),
          width: 40.0,
          margin: const EdgeInsets.only(left: 16.0),
        ),
      ],
    );
  }
}