import 'package:flutter/material.dart';
import '../config.dart';
import './banner.dart';
import './nav.dart';
import './song-list.dart';
import '../components/title-bar.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: MyHomePage(title: 'Cloud music'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: new Row(
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
                      contentPadding: EdgeInsets.all(10.0),
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
          ),
        backgroundColor: Colors.white
      ),
      body: new SingleChildScrollView(
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
      ),
      bottomNavigationBar: BottomNavigationBar( // 底部导航
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.alternate_email), title: Text('发现')),
          BottomNavigationBarItem(icon: Icon(Icons.play_circle_filled), title: Text('视频')),
          BottomNavigationBarItem(icon: Icon(Icons.music_note), title: Text('我的')),
          BottomNavigationBarItem(icon: Icon(Icons.group), title: Text('朋友')),
          BottomNavigationBarItem(icon: Icon(Icons.perm_identity), title: Text('账号')),
        ],
        currentIndex: _selectedIndex,
        fixedColor: GlobalConfig.navColor,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
      ),
    );
  }
}
