import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import "dart:ui";
import "package:flutter_card_swipper/flutter_card_swiper.dart";
import "package:flutter_neumorphic/flutter_neumorphic.dart";
import 'package:mewnu/views/contact/contact_page.dart';
import 'package:mewnu/views/home/home_page.dart';
import 'package:mewnu/views/components/navigator_bar.dart';

import 'package:mewnu/views/components/navigator_controller.dart';
import 'package:mewnu/views/home/home_page_1/home_page_1.dart';
import 'package:mewnu/views/home/home_page_2/home_page_2.dart';
import 'package:mewnu/views/home/home_page_3/home_page_3.dart';
import 'package:mewnu/views/home/home_page_4/home_page_4.dart';
import 'package:rx_notifier/rx_notifier.dart';

// class HomePage extends StatelessWidget {
//   HomePage({this.navigatorController});
//   final NavigatorController navigatorController;
class HomePage extends StatefulWidget {
  HomePage({this.navigatorController});
  final NavigatorController navigatorController;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final SwiperController swiperController = SwiperController();
  @override
  Widget build(BuildContext context) {
    final List<Widget> navigationPages = [
      HomePage1(navigatorController: widget.navigatorController),
      HomePage2(),
      HomePage3(),
      HomePage4(),
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
