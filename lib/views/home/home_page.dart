import 'package:flutter/material.dart';
import 'package:mewnu/views/home/home_zone_1/home_zone_1.dart';
import 'package:mewnu/views/home/home_zone_2/home_zone_2.dart';
import 'package:mewnu/views/home/home_zone_3/home_zone_3.dart';
import 'package:mewnu/views/home/home_zone_4/home_zone_4.dart';
import 'package:mewnu/views/components/navigator_controller.dart';

class HomePage extends StatefulWidget {
  HomePage({this.navigatorController});
  final NavigatorController navigatorController;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController pageController = PageController(initialPage: 0);

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  onTap(int i) {
    setState(() {
      pageController.animateToPage(i,
          duration: Duration(milliseconds: 1200), curve: Curves.decelerate);
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      scrollDirection: Axis.vertical,
      children: [
        HomeZone1(
          navigatorController: widget.navigatorController,
          onTap: (i) => onTap(i),
        ),
        HomeZone2(),
        HomeZone3(),
        HomeZone4(),
      ],
    );
  }
}
