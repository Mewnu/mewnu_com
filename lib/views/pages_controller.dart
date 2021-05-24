import 'package:flutter/material.dart';
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
  NavigatorController navigatorController = NavigatorController();
  PageController pageController = PageController(initialPage: 0);
  bool isHovered = false;
  int onIndexChanged = 1;
  @override
  void initState() {
    // navigatorController.setFuturistic();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  onTap(int i) {
    pageController.animateToPage(i,
        duration: Duration(milliseconds: 1200),
        curve: Curves.decelerate);
  }

  @override
  Widget build(BuildContext context) {
    return RxBuilder(
      builder: (BuildContext context) {
        return Scaffold(
          body: Stack(
            children: [
              PageView(
                controller: pageController,
                onPageChanged: (index) {
                  navigatorController.setCurrentSwiperIndex(index);
                },
                children: [
                  HomePage(navigatorController: navigatorController),
                  ContactPage()
                ],
              ),
              NavigatorBar(
                onTap: (i) => onTap(i),
                onIndexChanged: onIndexChanged,
                navigatorController: navigatorController,
              ),
            ],
          ),
        );
      },
    );
  }
}
