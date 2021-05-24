import 'package:flutter/material.dart';
import "package:flutter_card_swipper/flutter_card_swiper.dart";
import "package:flutter_neumorphic/flutter_neumorphic.dart";
import 'package:mewnu/views/components/navigator_controller.dart';
import 'package:mewnu/views/home/home_zone_1/home_zone_1.dart';
import 'package:mewnu/views/home/home_zone_2/home_zone_2.dart';
import 'package:mewnu/views/home/home_zone_3/home_zone_3.dart';
import 'package:mewnu/views/home/home_zone_4/home_zone_4.dart';

class HomePage extends StatefulWidget {
  HomePage({this.navigatorController});
  final NavigatorController navigatorController;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final SwiperController swiperController = SwiperController();

  @override
  void initState() {
    swiperController.move(0);
    super.initState();
  }

  @override
  void dispose() {
    swiperController.dispose();
    super.dispose();
  }

  onTap(int i) {
    setState(() {
      swiperController.move(i);
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> navigationPages = [
      HomeZone1(
        navigatorController: widget.navigatorController,
        swiperController: swiperController,
        onTap: (i) => onTap(i),
      ),
      HomeZone2(),
      HomeZone3(),
      HomeZone4(),
    ];

    return Swiper(
      controller: swiperController,
      itemCount: navigationPages.length,
      scrollDirection: Axis.vertical,
      loop: false,
      itemBuilder: (BuildContext context, int index) {
        return navigationPages[index];
      },
    );
  }
}
