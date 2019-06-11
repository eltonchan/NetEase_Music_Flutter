import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';    // 引入头文件
import '../config.dart';

class SwiperView extends StatefulWidget {
  @override
  _SwiperViewState createState() => _SwiperViewState();
}

class _SwiperViewState extends State<SwiperView> {
  // 声明一个list，存放image Widget
  List<Widget> imageList = List();

  @override
  void initState() {
    imageList
    ..add(Image.network(
      'http://p1.music.126.net/ftH-xPfuregxpeM-Ns-ZXA==/109951164138092434.jpg',
      fit: BoxFit.fill,
    ))
    ..add(Image.network(
      'http://p1.music.126.net/8XCqcLQ4Tgp06D7YUcVY6w==/109951164140076837.jpg',
      fit: BoxFit.fill,
    ))
    ..add(Image.network(
      'http://p1.music.126.net/jqLRnokuYNIeatGmXtxsow==/109951164138668142.jpg',
      fit: BoxFit.fill,
    ))
    ..add(Image.network(
      'http://p1.music.126.net/6KW3ek-RNagXdPh-caxlOQ==/109951164138118639.jpg',
      fit: BoxFit.fill,
    ))
    ..add(Image.network(
      'http://p1.music.126.net/q2B8r5WeRFf8RwdyjrwGKw==/109951164138123358.jpg',
      fit: BoxFit.fill,
    ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        firstSwiperView()
      ]
    );
  }
  
  Widget firstSwiperView() {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
      width: MediaQuery.of(context).size.width,
      height: 180,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(6.0)),
        child: Swiper(
          itemCount: 5,
          itemBuilder: _swiperBuilder,
          pagination: SwiperPagination(
              alignment: Alignment.bottomCenter,
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
              builder: DotSwiperPaginationBuilder(
                  color: Colors.grey[200],
                  size: 8,
                  activeColor: GlobalConfig.navColor
              )
          ),
          controller: SwiperController(),
          scrollDirection: Axis.horizontal,
          autoplay: true,
          autoplayDelay: 5000,
          onTap: (index) => print('点击了第$index'),
        ),
      ),
    );
  }
  
  Widget _swiperBuilder(BuildContext context, int index) {
    return (imageList[index]);
  }
}
