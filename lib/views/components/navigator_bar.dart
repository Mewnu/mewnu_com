import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import "dart:ui";
import "package:flutter_card_swipper/flutter_card_swiper.dart";
import "package:flutter_neumorphic/flutter_neumorphic.dart";
import 'package:mewnu/views/contact/contact_page.dart';
import 'package:mewnu/views/home/home_page.dart';
import 'package:rx_notifier/rx_notifier.dart';
import "dart:ui";
import "package:flutter_card_swipper/flutter_card_swiper.dart";
import "package:flutter_neumorphic/flutter_neumorphic.dart";
import 'package:mewnu/views/contact/contact_page.dart';
import 'package:mewnu/views/home/home_page.dart';
import 'package:mewnu/views/components/navigator_bar.dart';
import 'package:mewnu/views/components/navigator_controller.dart';
import 'package:rx_notifier/rx_notifier.dart';
import 'package:delayed_display/delayed_display.dart';

class NavigatorBar extends StatelessWidget {
  NavigatorBar({
    this.onTap(i),
    this.onIndexChanged,
    this.navigatorController,
    // this.mobile
  });
  final int onIndexChanged;
  final void Function(int) onTap;
  final NavigatorController navigatorController;
  // final bool mobile;
  @override
  Widget build(BuildContext context) {
    double padding = MediaQuery.of(context).size.width / 6;
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          padding: EdgeInsets.all(constraints.maxWidth > 578 ? 96 : padding),
          child: Row(
            children: [
              SizedBox(
                height: 32,
                width: 32,
                child: RxBuilder(
                  builder: (BuildContext context) {
                    return InkWell(
                      onTap: () {},
                      onHover: (value) {},
                      child: Stack(
                        children: [
                          // AnimatedContainer(
                          //   duration: Duration(milliseconds: 1200),
                          //   height: navigatorController.index == 0 ? 32 : 0,
                          //   // decoration: BoxDecoration(
                          //   //   image: DecorationImage(
                          //   //     image: AssetImage(
                          //   //       'assets/logo/mewnu_logo_light.png',
                          //   //     ),
                          //   //   ),
                          //   // ),
                          //   child: Image.asset(
                          //     'assets/logo/mewnu_logo_light.png',
                          //     color: navigatorController.index == 0
                          //         ? Colors.red
                          //         : Colors.transparent,
                          //   ),
                          // ),
                          navigatorController.index == 0
                              ? DelayedDisplay(
                                  delay: Duration(milliseconds: 200),
                                  child: Image.asset(
                                      'assets/logo/mewnu_logo_light.png',
                                      color: Colors.black),
                                )
                              : Container(),
                          navigatorController.index == 1
                              ? DelayedDisplay(
                                  delay: Duration(milliseconds: 200),
                                  child: Image.asset(
                                    'assets/logo/mewnu_logo_light.png',
                                    color: Colors.white,
                                  ),
                                )
                              : Container(),
                          // AnimatedContainer(
                          //   duration: Duration(milliseconds: 1200),
                          //   height: navigatorController.index == 1 ? 32 : 0,
                          //   // decoration: BoxDecoration(
                          //   //   image: DecorationImage(
                          //   //     image: AssetImage(
                          //   //       'assets/logo/mewnu_logo_dark.png',
                          //   //     ),
                          //   //   ),
                          //   // ),
                          //   child: Image.asset(
                          //     'assets/logo/mewnu_logo_light.png',
                          //     color: navigatorController.index == 1 ? Colors.red : Colors.transparent,
                          //   ),
                          // ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Spacer(),
              Row(
                children: [
                  InkWell(
                    // focusColor: Colors.transparent,
                    // hoverColor: Colors.transparent,
                    // splashColor: Colors.transparent,
                    // // this.focusColor,
                    // // this.hoverColor,
                    // highlightColor: Colors.transparent,
                    // // overlayColor: Colors.transparent,
                    // // this.splashColor,
                    onTap: () {
                      onTap(0);
                    },
                    onHover: (value) {},
                    child: Text(
                      'HOME',
                      style: TextStyle(
                        fontFamily: 'Lato',
                        wordSpacing: 4,
                        letterSpacing: 2,
                        fontSize: 16,
                        color: Colors.grey[800],
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ),
                  SizedBox(width: 32),
                  InkWell(
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: () {
                      onTap(1);
                    },
                    onHover: (value) {},
                    child: Text(
                      'CONTACT',
                      style: TextStyle(
                        fontFamily: 'Lato',
                        wordSpacing: 4,
                        letterSpacing: 2,
                        fontSize: 16,
                        color: Colors.grey[300],
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
