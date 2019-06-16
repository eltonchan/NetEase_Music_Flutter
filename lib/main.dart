import 'package:flutter/material.dart';
import './config.dart';
// import './routes.dart';
import './home/index.dart';
import './video/index.dart';
import './me/index.dart';
import './friend/index.dart';
import './account/index.dart';
import './components/bar.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NetEase Music',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: MyHomePage(title: 'Cloud music'),
      // routes: routes,
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
  List<StatelessWidget> _pageList = [
    new HomeView(),
    new VideoView(),
    new MeView(),
    new FriendView(),
    new AccountView()
  ];

  List<StatelessWidget> _barList = [
    new BarView(Icons.mic_none),
    new BarView(Icons.play_circle_outline),
    new BarView(Icons.mic_none),
    new BarView(Icons.mic_none),
    new BarView(Icons.mic_none),
  ];

  StatelessWidget _currentPage;
  StatelessWidget _currentBar;

  @override
  void initState() {
    super.initState();
    _currentPage = _pageList[_selectedIndex];
    _currentBar = _barList[_selectedIndex];
  }

  void _onItemTapped(index) {
    setState(() {
      _selectedIndex = index;
      _currentPage = _pageList[index];
      _currentBar = _barList[index];
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: _currentBar,
        backgroundColor: Colors.white,
      ),
      body: new SingleChildScrollView(
        child: _currentPage,
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

void main() => runApp(MyApp());

