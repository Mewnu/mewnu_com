import 'dart:ui';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:mewnu/views/home/home_zone_3/home_zone_3_deadlines.dart';

// HomePage2Deadlines
class HomeZone3 extends StatefulWidget {
  @override
  _HomeZone3State createState() => _HomeZone3State();
}

class _HomeZone3State extends State<HomeZone3> {
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
    double titleSize = width / 13.15;
    double titleSize4 = width / 16.5;
    double heightBox = width / 40;
    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(padding, 0, padding, 0),
              color: Colors.white,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: padding / 4),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Row(
                          children: [
                            DelayedDisplay(
                              delay: Duration(
                                  milliseconds: 200),
                              slidingBeginOffset: Offset(0.0, -0.35),
                              child: Text(
                                'Damos ',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            DelayedDisplay(
                              delay: Duration(
                                  milliseconds: 600),
                              child: Text(
                                'vida ao seu',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    DelayedDisplay(
                      delay: Duration(milliseconds: 800),
                      child: Text(
                        'projeto.',
                        style: TextStyle(
                          fontSize: titleSize,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(height: heightBox),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: DelayedDisplay(
                          delay: Duration(
                              milliseconds: 1000),
                          child: Text(
                            'Focamos na perfeição sem perder os prazos.',
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
                          delay:
                              Duration(milliseconds: 0),
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
                                          'consultar prazos ',
                                          style: TextStyle(
                                            fontFamily: 'Red_Hat_Text',
                                            fontSize: titleSize4 / 2.39,
                                            color: Colors.grey[400],
                                            fontWeight: FontWeight.w100,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: titleSize4 / 10,
                                        ),
                                        child: Icon(
                                          Icons.call_made,
                                          size: titleSize4 / 2.6,
                                          color: Colors.grey[400],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                AnimatedContainer(
                                  duration: Duration(milliseconds: 200),
                                  height: 4,
                                  width: titleSize4 * 3.1,
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
                        HomeZone3Deadlines(onBack: onBack),
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
