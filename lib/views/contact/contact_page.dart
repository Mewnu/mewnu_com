import 'package:flutter/material.dart';
import "package:flutter_card_swipper/flutter_card_swiper.dart";
import "package:flutter_neumorphic/flutter_neumorphic.dart";
import 'package:mewnu/views/contact/contact_zone_1.dart';
import 'package:mewnu/views/contact/contact_page_2.dart';

class ContactPage extends StatelessWidget {
  final SwiperController swiperController = SwiperController();
  final List<Widget> navigationPages = [
    HomePage1(),
    HomePage2()
  ];

  @override
  Widget build(BuildContext context) {
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
