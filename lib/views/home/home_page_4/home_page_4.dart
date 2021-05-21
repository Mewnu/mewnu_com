import 'dart:ui';

import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:mewnu/views/home/home_page_4/home_page_4_prices.dart';

class HomePage4 extends StatefulWidget {
  @override
  _HomePage4State createState() => _HomePage4State();
}

class _HomePage4State extends State<HomePage4> {
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
    double titleSize2 = width / 17.17;
    double titleSize3 = width / 38.47;

    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(padding, 0, padding, 0),
              height: MediaQuery.of(context).size.height,
              width: width,
              color: Colors.white,
              child: Container(
                // color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: padding / 4),
                    Row(
                      children: [
                        DelayedDisplay(
                          delay:
                              Duration(milliseconds: 0), //milliseconds: 600),
                          slidingBeginOffset: Offset(0.0, -0.35),
                          child: Text(
                            'Serviço ',
                            style: TextStyle(
                              fontSize: titleSize,
                              // color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        DelayedDisplay(
                          delay:
                              Duration(milliseconds: 0), //milliseconds: 800),
                          child: Text(
                            'de ',
                            style: TextStyle(
                              fontSize: titleSize,
                              // color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        DelayedDisplay(
                          delay:
                              Duration(milliseconds: 0), //milliseconds: 1000),
                          child: Text(
                            'fácil ',
                            style: TextStyle(
                              fontSize: titleSize,
                              // color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        DelayedDisplay(
                          delay:
                              Duration(milliseconds: 0), //milliseconds: 1200),
                          child: Text(
                            'acesso',
                            style: TextStyle(
                              fontSize: titleSize,
                              // color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        DelayedDisplay(
                          delay:
                              Duration(milliseconds: 0), //milliseconds: 200),
                          child: Text(
                            'e ',
                            style: TextStyle(
                              fontSize: titleSize2,
                              // color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        DelayedDisplay(
                          delay:
                              Duration(milliseconds: 0), //milliseconds: 2400),
                          child: Text(
                            'que ',
                            style: TextStyle(
                              fontSize: titleSize2,
                              // color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        DelayedDisplay(
                          delay:
                              Duration(milliseconds: 0), //milliseconds: 2600),
                          child: Text(
                            'cabe ',
                            style: TextStyle(
                              fontSize: titleSize2,
                              // color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        DelayedDisplay(
                          delay:
                              Duration(milliseconds: 0), //milliseconds: 2800),
                          child: Text(
                            'no ',
                            style: TextStyle(
                              fontSize: titleSize2,
                              // color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        DelayedDisplay(
                          delay:
                              Duration(milliseconds: 0), //milliseconds: 3000),
                          child: Text(
                            'seu ',
                            style: TextStyle(
                              fontSize: titleSize2,
                              // color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        DelayedDisplay(
                          delay:
                              Duration(milliseconds: 0), //milliseconds: 3200),
                          child: Text(
                            'bolso.',
                            style: TextStyle(
                              fontSize: titleSize2,
                              // color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: padding / 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        DelayedDisplay(
                          delay:
                              Duration(milliseconds: 0), //milliseconds: 2400),
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
                                          'consultar valores   ',
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
                                  height: _isHover || _showDeadlines ? 24 : 0,
                                  width: titleSize * 3.8,
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
                        HomePage4Prices(onBack: onBack),
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
