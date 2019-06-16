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
    ..add(Image.asset(
      'images/1.jpg',
      fit: BoxFit.fill,
    ))
    ..add(Image.asset(
      'images/2.jpg',
      fit: BoxFit.fill,
    ))
    ..add(Image.asset(
      'images/3.jpg',
      fit: BoxFit.fill,
    ))
    ..add(Image.asset(
      'images/4.jpg',
      fit: BoxFit.fill,
    ))
    ..add(Image.asset(
      'images/5.jpg',
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
      // padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(bottom: 18.0),
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
