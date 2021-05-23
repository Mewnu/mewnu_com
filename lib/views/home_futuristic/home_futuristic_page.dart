import 'package:flutter/material.dart';
import "package:flutter_card_swipper/flutter_card_swiper.dart";
import "package:flutter_neumorphic/flutter_neumorphic.dart";
import 'package:mewnu/views/components/navigator_controller.dart';
import 'package:mewnu/views/home_futuristic/home_zone_1/home_zone_1.dart';
import 'package:mewnu/views/home_futuristic/home_zone_2/home_zone_2.dart';
// import 'package:mewnu/views/home_futuristic/home_zone_3/home_zone_3.dart';
// import 'package:mewnu/views/home_futuristic/home_zone_4/home_zone_4.dart';
import "package:mewnu/providers/product_provider.dart";
import "package:flutter/material.dart";
import "dart:ui";
import "package:flutter_card_swipper/flutter_card_swiper.dart";
import "package:mewnu/widgets/product_card.dart";
import "package:mewnu/models/product_model.dart";
import "package:mewnu/providers/product_provider.dart";
import 'package:delayed_display/delayed_display.dart';
// import "package:mewnu/views/details_page.dart";
class HomeFuturisticPage extends StatefulWidget {
  HomeFuturisticPage({this.navigatorController});
  final NavigatorController navigatorController;
  @override
  _HomeFuturisticPageState createState() => _HomeFuturisticPageState();
}

class _HomeFuturisticPageState extends State<HomeFuturisticPage> {
    SwiperController swiperController = SwiperController();
  var _scaffoldKey = GlobalKey<ScaffoldState>();
  List<ProductModel> productsList = ProductsState().categoryEarphones;
  int indexPage = 0;
  int indexType = 0;
  bool isEnabled = true;
  bool isHover = false;
  
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

  waitToPressAgain() {
    setState(() {
      isEnabled = false;
    });
    Future.delayed(Duration(milliseconds: 1201)).then((value) {
      setState(() {
        isEnabled = true;
      });
    });
  }

  onTapPrevious() {
    waitToPressAgain();
    swiperController.previous();
    swiperController.index = swiperController.index.abs();
    swiperController.index--;
    swiperController.index = swiperController.index % (productsList.length);
  }

  onTapNext() {
    waitToPressAgain();
    swiperController.next();
    swiperController.index = swiperController.index.abs();
    swiperController.index++;
    swiperController.index = swiperController.index % (productsList.length);
  }
  //  SwiperController swiperController = SwiperController();
  // var _scaffoldKey = GlobalKey<ScaffoldState>();
  // List<ProductModel> productsList = ProductsState().categoryEarphones;
  // int indexPage = 0;
  // int indexType = 0;
  // bool isEnabled = true;
  // bool isHover = false;
  
  // @override
  // void initState() {
  //   swiperController.move(0);
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   swiperController.dispose();
  //   super.dispose();
  // }

  // waitToPressAgain() {
  //   setState(() {
  //     isEnabled = false;
  //   });
  //   Future.delayed(Duration(milliseconds: 1201)).then((value) {
  //     setState(() {
  //       isEnabled = true;
  //     });
  //   });
  // }

  // onTapPrevious() {
  //   waitToPressAgain();
  //   swiperController.previous();
  //   swiperController.index = swiperController.index.abs();
  //   swiperController.index--;
  //   swiperController.index = swiperController.index % (productsList.length);
  // }

  // onTapNext() {
  //   waitToPressAgain();
  //   swiperController.next();
  //   swiperController.index = swiperController.index.abs();
  //   swiperController.index++;
  //   swiperController.index = swiperController.index % (productsList.length);
  // }


  // final SwiperController swiperController = SwiperController();
  @override
  Widget build(BuildContext context) {
    final List<Widget> navigationFuturisticPages = [
      HomeFuturisticZone1(navigatorController: widget.navigatorController),
      HomeZone2(),
      // HomeZone3(),
      // HomeZone4(),
    ];
    //  onTapPrevious: () => onTapPrevious(),
    //                           onTapNext: () => onTapNext(),
    return Stack(
      children: [
        // Swiper(
        //   // onIndexChanged: (index) {
        //   //   setState(() {
        //   //     swiperController.index = index;
        //   //   });
        //   // },
        //   // physics: const NeverScrollableScrollPhysics(),
        //   layout: SwiperLayout.STACK,
        //   itemHeight: 
        //   // constraints.maxWidth > 900
        //       MediaQuery.of(context).size.height / 1.2,
        //       // : MediaQuery.of(context).size.width / 1.2,
        //   itemWidth: 
        //   // constraints.maxWidth > 900
        //       // ? MediaQuery.of(context).size.height / 1.2
        //       MediaQuery.of(context).size.width / 1.2,
        //   scrollDirection: Axis.vertical,
        //   controller: swiperController,
        //   itemCount: productsList.length,
        //   itemBuilder: (BuildContext context, int index) {
        //     // return Stack(
        //     //   children: [
        //     return ProductCard(
        //       productsList: productsList,
        //       index: index,
        //       onTapPrevious: () => onTapPrevious(),
        //       onTapNext: () => onTapNext(),
        //       currentIndex: swiperController.index,
        //       width: 230,
        //       isEnabled: isEnabled,
        //     );
        //     //   ],
        //     // );
        //   },
        // ),
        Swiper(
          // onIndexChanged: (index) {
          //   setState(() {
          //     swiperController.index = index;
          //   });
          // },
          // physics: const NeverScrollableScrollPhysics(),
          layout: SwiperLayout.STACK,
          loop: false,
          itemHeight: MediaQuery.of(context).size.height / 1.2,
          itemWidth: MediaQuery.of(context).size.width / 1.2,
          scrollDirection: Axis.vertical,
          controller: swiperController,
          itemCount: navigationFuturisticPages.length,

          itemBuilder: (BuildContext context, int index) {
            return navigationFuturisticPages[index];
          },
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            color: Colors.red,
            width: 300,
            height: 300,
            child: InkWell(
              onTap: () {
                // swiperController.next();
                onTapNext();
              },
              child: Icon(Icons.menu),
            ),
          ),
        ),
      ],
    );
    // return Swiper(
    //   layout: SwiperLayout.CUSTOM,
    //   customLayoutOption: new CustomLayoutOption(startIndex: -1, stateCount: 3)
    //       .addRotate([-45.0 / 180, 0.0, 45.0 / 180]).addTranslate([
    //     new Offset(-370.0, -40.0),
    //     new Offset(0.0, 0.0),
    //     new Offset(370.0, -40.0)
    //   ]),
    //   // physics: const NeverScrollableScrollPhysics(),
    //   // layout: SwiperLayout.STACK,
    //   itemWidth: 300,//MediaQuery.of(context).size.width,
    //   controller: swiperController,
    //   itemCount: navigationFuturisticPages.length,
    //   scrollDirection: Axis.vertical,
    //   loop: false,
    //   itemBuilder: (BuildContext context, int index) {
    //     return navigationFuturisticPages[index];
    //   },
    // );
  }
}
