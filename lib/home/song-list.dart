import 'package:flutter/material.dart';
import '../components/item.dart';

class Song {
  String imgUrl;
  String description;

  Song(this.imgUrl, this.description);
}

List<Song> songListTop = [
  new Song('images/song_1.jpg', '只颂人间星月，不述离别哀悲'),
  new Song('images/song_2.jpg', '冷门电音•游戏向⚡️自带“反杀”buff'),
  new Song('images/song_3.jpg', '『云村热歌』评论10w+（全收录）'),
];

List<Song> songListBottom = [
  new Song('images/song_4.jpg', '【听·蓝】海不会不蓝，海浪不会不在'),
  new Song('images/song_5.jpg', '深情布鲁斯，浓情老酒馆。'),
  new Song('images/song_6.jpg', '晚安demo cover：颜人中'),
];


class SongLists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: songListTop.map((Song song) => Item(song.imgUrl, song.description)).toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: songListBottom.map((Song song) => Item(song.imgUrl, song.description)).toList(),
        ),
      ]
    );
  }
}