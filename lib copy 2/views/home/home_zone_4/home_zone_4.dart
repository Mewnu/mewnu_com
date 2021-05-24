import 'dart:ui';

import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:mewnu/views/home/home_zone_4/home_zone_4_prices.dart';

class HomeZone4 extends StatefulWidget {
  @override
  _HomeZone4State createState() => _HomeZone4State();
}

class _HomeZone4State extends State<HomeZone4> {
  bool _isHover = false;
  bool _showDeadlines = false;

  onBack() {
    setState(() {
      _showDeadlines = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double padding = width / 6;
    double titleSize = width / 16.1;
    double titleSize3 = width / 38.47;
    double heightBox = width / 56;

    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(padding, 0, padding, 0),
              // height: MediaQuery.of(context).size.height,
              // width: width,
              child: Container(
                // color: Colors.blue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: padding / 4),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Row(
                          children: [
                            DelayedDisplay(
                              delay: Duration(milliseconds: 200),
                              slidingBeginOffset: Offset(0.0, -0.35),
                              child: Text(
                                'Serviço ',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            DelayedDisplay(
                              delay: Duration(milliseconds: 600),
                              child: Text(
                                'de fácil acesso',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: DelayedDisplay(
                          delay: Duration(milliseconds: 800),
                          child: Text(
                            'e que cabe no seu bolso.',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: heightBox),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: DelayedDisplay(
                          delay: Duration(milliseconds: 1000),
                          child: Text(
                            'Entregar valor é o nosso propósito.',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: heightBox),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        DelayedDisplay(
                          delay: Duration(milliseconds: 0),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                _showDeadlines = true;
                              });
                            },
                            onHover: (value) {
                              setState(() {
                                _isHover = value;
                              });
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Text(
                                          'consultar valores ',
                                          style: TextStyle(
                                            fontFamily: 'Red_Hat_Text',
                                            fontSize: titleSize3,
                                            color: Colors.grey[400],
                                            fontWeight: FontWeight.w100,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: titleSize / 10,
                                        ),
                                        child: Icon(
                                          Icons.call_made,
                                          size: titleSize / 2.6,
                                          color: Colors.grey[400],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                AnimatedContainer(
                                  duration: Duration(milliseconds: 200),
                                  height: 4,
                                  width: titleSize * 3.2,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      top: BorderSide(
                                        color: Colors.grey[200],
                                        width:
                                            _isHover || _showDeadlines ? 4 : 1,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: _showDeadlines
                  ? Stack(
                      children: [
                        DelayedDisplay(
                          delay: Duration(milliseconds: 0),
                          child: BackdropFilter(
                            filter:
                                ImageFilter.blur(sigmaX: 12.0, sigmaY: 12.0),
                            child: AnimatedContainer(
                              duration: Duration(milliseconds: 400),
                              color: Colors.grey[100].withOpacity(0.94),
                            ),
                          ),
                        ),
                        HomeZone4Prices(onBack: onBack),
                      ],
                    )
                  : Container(),
            ),
          ],
        );
      },
    );
  }
}
