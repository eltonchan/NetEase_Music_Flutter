import 'package:flutter/material.dart';

class VideoItem extends StatelessWidget {
  final String imgUrl;
  final String description;
  final String userAvatarUrl;

  VideoItem(
    this.imgUrl, this.description, this.userAvatarUrl
  );

  Widget videoImg() {
    return new Container(
      margin: EdgeInsets.only(bottom: 10),
      width: 400,
      height: 200,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(6.0)),
        child: new Image.asset(
          imgUrl,
          fit: BoxFit.cover,
        ),
      )
    );
  }

  Widget videoInfo() {
    return new Container(
      margin: EdgeInsets.only(top: 5, bottom: 5),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Expanded(
            flex: 1,
            child: new Text(
              description, 
              textAlign: TextAlign.left,
              style: new TextStyle(fontSize: 18.0, color: Colors.black),
            )
          ),
          CircleAvatar(
            backgroundImage: NetworkImage(userAvatarUrl),
          ),
        ],
      ),
    );
  }

  Widget videoStatus() {
    return new Container(
      margin: EdgeInsets.only(top: 5.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Expanded(
            flex: 1,
            child: new Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.red.shade800,
                  child: Text('JB'),
                ),
                new Container(
                  margin: EdgeInsets.only(left: 12),
                  child: new Text('全球潮流音乐'),
                )
              ],
            )
          ),
          new Container(
            margin: EdgeInsets.only(right: 30),
            child: new Icon(Icons.thumb_up, size: 22, color: Colors.grey[400]),
          ),
          new Container(
            margin: EdgeInsets.only(right: 30),
            child: new Icon(Icons.comment, size: 22, color: Colors.grey[400]),
          ),
          new Container(
            // margin: EdgeInsets.only(right: 20),
            child: new Icon(Icons.more_vert, size: 22, color: Colors.grey[400]),
          )
        ]
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.only(bottom: 16.0),
      padding: new EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          videoImg(),
          videoInfo(),
          Divider(),
          videoStatus()
        ],
      )
    );
  }
}