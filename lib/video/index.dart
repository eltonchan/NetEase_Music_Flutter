import 'package:flutter/material.dart';
import './video.model.dart';
import '../components/video-item.dart';


class VideoView extends StatelessWidget {

  Widget build(BuildContext context) {
    return new Container(
      color: Colors.grey[100],
      child: new Column(
        children: videoModel.map((Video v) => new VideoItem(v.imgUrl, v.description, v.userAvatarUrl)).toList(),
      ),
    );
  }
}