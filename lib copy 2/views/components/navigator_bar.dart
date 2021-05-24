import "dart:ui";
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import "package:flutter_card_swipper/flutter_card_swiper.dart";
import 'package:delayed_display/delayed_display.dart';
import 'package:rx_notifier/rx_notifier.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mewnu/views/contact/contact_page.dart';
import 'package:mewnu/views/home/home_page.dart';
import 'package:mewnu/views/contact/contact_page.dart';
import 'package:mewnu/views/home/home_page.dart';
import 'package:mewnu/views/components/navigator_bar.dart';
import 'package:mewnu/views/components/navigator_controller.dart';
// import 'package:provider/provider.dart';
// import 'package:url_launcher/url_launcher.dart';
import 'dart:js' as js;

// import 'package:flutter/foundation.dart' show kIsWeb;
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

  void launchWhatsapp() async {
    // String produto = '';
    // for (int i = 0; i < cartManager.items.length; i++) {
    //   produto += '- ${cartManager.items[i].product.name}\n' +
    //       '  - Medida: ${cartManager.items[i].size}\n' +
    //       '  - Valor: ${cartManager.items[i].unitPrice.toStringAsFixed(2)}\n' +
    //       '  - Quantidade: ${cartManager.items[i].quantity}\n';
    // }

    // String number = '+5562994904574';
    String msg = 'Olá, tenho interesse na criação de um site.';
    String whats = '+5561993424369';
    String url = 'whatsapp://send?phone=${whats}&text=$msg';
    // if (kIsWeb) {
    js.context.callMethod("open", [url]);
    // } else {
    // await canLaunch(url) ? launch(url) : print('cant open whatsapp');
    // }
  }

  @override
  Widget build(BuildContext context) {
    double padding = MediaQuery.of(context).size.width / 6;
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          padding: EdgeInsets.all(constraints.maxWidth > 578 ? 96 : padding),
          child: Stack(
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 32,
                    width: 32,
                    child: RxBuilder(
                      builder: (BuildContext context) {
                        return InkWell(
                          onTap: () {
                            launchWhatsapp();
                          },
                          onHover: (value) {},
                          child: Stack(
                            children: [
                              navigatorController.index == 0
                                  ? DelayedDisplay(
                                      delay: Duration(milliseconds: 200),
//                                child:    SvgPicture.asset(
//   'assets/logo/mpt.svg',
//   semanticsLabel: 'Acme Logo'
// ),
                                      child: Image.asset(
                                        'assets/logo/mewnu_logo_white.png',
                                        color: Colors.black,
                                      ),
                                    )
                                  : Container(),
                              navigatorController.index == 1
                                  ? DelayedDisplay(
                                      delay: Duration(milliseconds: 200),
//                                                                  child:    SvgPicture.asset(
//   'assets/logo/mbt.svg',
//   semanticsLabel: 'Acme Logo'
// ),
                                      child: Image.asset(
                                        'assets/logo/mewnu_logo_white.png',
                                        color: Colors.white,
                                      ),
                                    )
                                  : Container(),
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
                          'CONTATO',
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
              Align(
                alignment: Alignment.bottomRight,
                child:
                    //  Row(
                    //   children: [
                   SizedBox(
                            height: 32,
                            width: 32,
                            child: RxBuilder(
                              builder: (BuildContext context) {
                                return InkWell(
                                    onTap: () {
                                      launchWhatsapp();
                                    },
                                    onHover: (value) {},
                                    child: navigatorController.index == 1
                                        ? DelayedDisplay(
                                            delay: Duration(milliseconds: 200),
//                                                                  child:    SvgPicture.asset(
//   'assets/logo/mbt.svg',
//   semanticsLabel: 'Acme Logo'
// ),
                                            child: Image.asset(
                                              'assets/logo/whatsapp_logo_3.png',
                                              color: Colors.grey[100],
                                            ),
                                          )
                                        : Container());
                              },
                            ),
                          ),
                // Spacer(),
                // Row(
                //   children: [
                //     InkWell(
                //       onTap: () {
                //         onTap(0);
                //       },
                //       onHover: (value) {},
                //       child: Text(
                //         'HOME',
                //         style: TextStyle(
                //           fontFamily: 'Lato',
                //           wordSpacing: 4,
                //           letterSpacing: 2,
                //           fontSize: 16,
                //           color: Colors.grey[800],
                //           fontWeight: FontWeight.w100,
                //         ),
                //       ),
                //     ),
                //     SizedBox(width: 32),
                //     InkWell(
                //       focusColor: Colors.transparent,
                //       hoverColor: Colors.transparent,
                //       splashColor: Colors.transparent,
                //       onTap: () {
                //         onTap(1);
                //       },
                //       onHover: (value) {},
                //       child: Text(
                //         'CONTATO',
                //         style: TextStyle(
                //           fontFamily: 'Lato',
                //           wordSpacing: 4,
                //           letterSpacing: 2,
                //           fontSize: 16,
                //           color: Colors.grey[300],
                //           fontWeight: FontWeight.w100,
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
                //   ],
                // ),
              ),
            ],
          ),
        );
      },
    );
  }
}
