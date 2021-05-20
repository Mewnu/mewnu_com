import 'dart:ui';

import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:mewnu/views/home/home_page_3/home_page_3_deadlines.dart';

// HomePage2Deadlines
class HomePage3 extends StatefulWidget {
  @override
  _HomePage3State createState() => _HomePage3State();
}

class _HomePage3State extends State<HomePage3> {
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
    double titleSize = width / 13.4;
    double titleSize3 = (width / 16.5);
    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(padding, 0, padding, 0),
              color: Colors.grey[100],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: padding / 4),
                  Row(
                    children: [
                      DelayedDisplay(
                        delay: Duration(milliseconds: 0), //milliseconds: 600),
                        slidingBeginOffset: Offset(0.0, -0.35),
                        child: Text(
                          'Damos ',
                          style: TextStyle(
                            fontSize: titleSize,
                            // color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      DelayedDisplay(
                        delay: Duration(milliseconds: 0), //milliseconds: 800),
                        child: Text(
                          'vida ',
                          style: TextStyle(
                            fontSize: titleSize,
                            // color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      DelayedDisplay(
                        delay: Duration(milliseconds: 0), //milliseconds: 1000),
                        child: Text(
                          'ao ',
                          style: TextStyle(
                            fontSize: titleSize,
                            // color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      DelayedDisplay(
                        delay: Duration(milliseconds: 0), //milliseconds: 1200),
                        child: Text(
                          'seu',
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
                        delay: Duration(milliseconds: 0), //milliseconds: 200),
                        child: Text(
                          'projeto.',
                          style: TextStyle(
                            fontSize: titleSize,
                            // color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: padding / 8),
                  Row(
                    children: [
                      DelayedDisplay(
                        delay: Duration(milliseconds: 0), //milliseconds: 2400),
                        child: Text(
                          'Focamos ',
                          style: TextStyle(
                            fontSize: titleSize / 2.39,
                            // color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      DelayedDisplay(
                        delay: Duration(milliseconds: 0), //milliseconds: 2600),
                        child: Text(
                          'na perfeição ',
                          style: TextStyle(
                            fontSize: titleSize / 2.39,
                            // color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      DelayedDisplay(
                        delay: Duration(milliseconds: 0), //milliseconds: 2800),
                        child: Text(
                          'sem ',
                          style: TextStyle(
                            fontSize: titleSize / 2.39,
                            // color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      DelayedDisplay(
                        delay: Duration(milliseconds: 0), //milliseconds: 3000),
                        child: Text(
                          'perder ',
                          style: TextStyle(
                            fontSize: titleSize / 2.39,
                            // color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      DelayedDisplay(
                        delay: Duration(milliseconds: 0), //milliseconds: 3200),
                        child: Text(
                          'os ',
                          style: TextStyle(
                            fontSize: titleSize / 2.39,
                            // color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      DelayedDisplay(
                        delay: Duration(milliseconds: 0), //milliseconds: 3400),
                        child: Text(
                          'prazos.',
                          style: TextStyle(
                            fontSize: titleSize / 2.39,
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
                        delay: Duration(milliseconds: 0), //milliseconds: 2400),
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
                              // CustomPaint(
                              //   painter: ShapePainter(),
                              //   child: Container(),
                              // ),
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Row(
                                  children: [
                                    Container(
                                      child: Text(
                                        'consultar prazos   ',
                                        style: TextStyle(
                                          fontFamily: 'Red_Hat_Text',
                                          fontSize: titleSize3 / 2.39,
                                          color: Colors.grey[400],
                                          fontWeight: FontWeight.w100,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: titleSize3 / 10,
                                        right: titleSize3 / 6,
                                      ),
                                      child: Icon(
                                        Icons.call_made,
                                        size: titleSize3 / 2.6,
                                        color: Colors.grey[400],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              AnimatedContainer(
                                duration: Duration(milliseconds: 200),
                                height: _isHover || _showDeadlines ? 24 : 0,
                                width: titleSize3 * 3.7,
                                decoration: BoxDecoration(
                                  border: Border(
                                    top: BorderSide(
                                      color: Colors.grey[200],
                                      width: _isHover || _showDeadlines ? 4 : 1,
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
                              color: Colors.grey[100].withOpacity(0.9),
                            ),
                          ),
                        ),
                        HomePage3Deadlines(onBack: onBack),
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
