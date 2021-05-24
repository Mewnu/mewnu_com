import "dart:ui";
import 'dart:js' as js;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:rx_notifier/rx_notifier.dart';
import 'package:mewnu/views/components/navigator_controller.dart';

class NavigatorBar extends StatelessWidget {
  NavigatorBar({
    this.onTap(i),
    this.onIndexChanged,
    this.navigatorController,
  });
  final int onIndexChanged;
  final void Function(int) onTap;
  final NavigatorController navigatorController;

  void launchWhatsapp() {
    String msg = 'Olá, tenho interesse na criação de um site.';
    String whats = '+5561993424369';
    String url = 'whatsapp://send?phone=${whats}&text=$msg';
    js.context.callMethod("open", [url]);
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
                        return Stack(
                            children: [
                              navigatorController.index == 0
                                  ? DelayedDisplay(
                                      delay: Duration(milliseconds: 200),
                                      child: Image.asset(
                                        'assets/logo/mewnu_logo.png',
                                        color: Colors.black,
                                      ),
                                    )
                                  : Container(),
                              navigatorController.index == 1
                                  ? DelayedDisplay(
                                      delay: Duration(milliseconds: 200),
                                      child: Image.asset(
                                        'assets/logo/mewnu_logo.png',
                                        color: Colors.white,
                                      ),
                                    )
                                  : Container(),
                            ],
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
                                            child: Image.asset(
                                              'assets/logo/whatsapp_logo_3.png',
                                              color: Colors.grey[100],
                                            ),
                                          )
                                        : Container());
                              },
                            ),
                          ),
              ),
            ],
          ),
        );
      },
    );
  }
}
