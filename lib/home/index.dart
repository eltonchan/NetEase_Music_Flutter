import 'package:flutter/material.dart';
import './banner.dart';
import './nav.dart';
import './song-list.dart';
import '../components/title-bar.dart';

class HomeView extends StatelessWidget {

  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(16),
        child: new Column(
          children: <Widget>[
            SwiperView(),
            NavView(),
            Divider(),
            TitleBar('推荐歌单', '歌单广场'),
            SongLists(),
          ],
        ),
    );
  }
}