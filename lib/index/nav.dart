import 'package:flutter/material.dart';
import '../config.dart';

class Nav {
  String text;
  IconData icon;

  Nav(this.text, this.icon);
}

List<Nav> navList = [
  new Nav('每日推荐', Icons.date_range),
  new Nav('歌单', Icons.queue_music),
  new Nav('排行榜', Icons.bubble_chart),
  new Nav('电台', Icons.data_usage),
  new Nav('直播', Icons.slow_motion_video),
];

class NavView extends StatelessWidget {

  Widget item(item) {
    return Expanded(
      child: Column(children: <Widget>[
        new Container(
          width: 56,
          height: 56,
          child: new Icon(item.icon, color: Colors.white),
          margin: EdgeInsets.only(bottom: 8.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: GlobalConfig.navColor,
          ),
        ),
        new Text(item.text)
      ],)
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: navList.map((nav) => item(nav)).toList()
    );
  }
}