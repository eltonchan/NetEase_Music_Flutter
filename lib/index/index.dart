import 'package:flutter/material.dart';
import 'package:flutter_app/index/bar.dart';
import '../config.dart';
import './banner.dart';
import './nav.dart';
import './bar.dart';
import './song-list.dart';
import '../components/title-bar.dart';
import '../routes.dart';

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
      routes: routes,
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

    switch(index) {
      case 1:
        Navigator.of(context).pushNamed('/video');
        break;
      case 2:
        Navigator.of(context).pushNamed('/me');
        break;
      case 3:
        Navigator.of(context).pushNamed('/friend');
        break;
      case 4:
        Navigator.of(context).pushNamed('/account');
      break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: new BarView(),
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
