import 'package:flutter/material.dart';
import "dart:ui";
import "package:flutter_card_swipper/flutter_card_swiper.dart";
import "package:flutter_neumorphic/flutter_neumorphic.dart";
import 'package:mewnu/views/contact/contact_page.dart';
import 'package:mewnu/views/home/home_page.dart';
import 'package:mewnu/views/components/navigator_bar.dart';

import 'package:mewnu/views/components/navigator_controller.dart';
import 'package:rx_notifier/rx_notifier.dart';

class PagesController extends StatefulWidget {
  @override
  _PagesControllerState createState() => _PagesControllerState();
}

class _PagesControllerState extends State<PagesController> {
  final navigatorController = NavigatorController();
  SwiperController swiperController = SwiperController();
  bool isHovered = false;
  int onIndexChanged = 1;
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
    List<Widget> navigationPages = [HomePage(), ContactPage()];//[ContactPage(), Container()];
    return Scaffold(
      body: Stack(
        children: [
          Swiper(
            controller: swiperController,
            itemCount: navigationPages.length,
            scrollDirection: Axis.horizontal,
            loop: false,
            onIndexChanged: (index) {
              // print(constraints.maxWidth);
              navigatorController.setCurrentSwiperIndex(index);
            },
            itemBuilder: (BuildContext context, int index) {
              return navigationPages[index];
            },
          ),
          NavigatorBar(
            onTap: (i) => onTap(i),
            onIndexChanged: onIndexChanged,
            navigatorController: navigatorController,
            // mobile: constraints.maxWidth > 578 ? false : true,
          ),
        ],
      ),
    );
  }
}
