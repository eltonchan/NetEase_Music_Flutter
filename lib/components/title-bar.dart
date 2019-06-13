import 'package:flutter/material.dart';
import '../config.dart';

class TitleBar extends StatelessWidget {
  final String title;
  final String buttonText;

  TitleBar(this.title, this.buttonText);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: new Text(title, style: new TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold )),
        ),
        new MaterialButton(
          onPressed: () => {},
          child: new Text(buttonText, style: new TextStyle(fontSize: 14.0)),
          textColor: GlobalConfig.primary,
          height: 30,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Colors.grey[200],
              width: 1,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
        )
      ],
    );
  }
}