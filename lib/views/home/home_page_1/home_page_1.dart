import 'dart:async';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:mewnu/views/components/navigator_controller.dart';

class HomePage1 extends StatefulWidget {
  HomePage1({this.navigatorController});
  final NavigatorController navigatorController;
  @override
  _HomePage1State createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
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
    double titleSize2 = width / 16.30;
    double heightBox = width / 50;
    double titleSize = width / 16.18;
    double titleSize3 = width / 38.47;
    return Padding(
      padding: EdgeInsets.fromLTRB(padding, 0, padding, 0),
      child: Container(
        // color: Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Row(
                  children: [
                    DelayedDisplay(
                      delay: Duration(milliseconds: 400),
                      slidingBeginOffset: Offset(0.0, -0.35),
                      child: Text(
                        'Somos ',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    DelayedDisplay(
                      delay: Duration(milliseconds: 800),
                      child: Text(
                        'uma ',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    DelayedDisplay(
                      delay: Duration(milliseconds: 1000),
                      child: Text(
                        'agência ',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    DelayedDisplay(
                      delay: Duration(milliseconds: 1200),
                      child: Text(
                        'de',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                DelayedDisplay(
                  delay: Duration(milliseconds: 600),
                  child: Text(
                    'webdesign ',
                    style: TextStyle(
                      fontSize: titleSize2,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                DelayedDisplay(
                  delay: Duration(milliseconds: 400),
                  slidingBeginOffset: Offset(0.35, 0),
                  child: DefaultTextStyle(
                    style: TextStyle(
                      fontSize: titleSize2,
                      fontWeight: FontWeight.w600,
                      // fontFamily: 'Horizon',
                    ),
                    child: AnimatedTextKit(
                      repeatForever: true,
                      animatedTexts: [
                        FadeAnimatedText('minimalista.'),
                        FadeAnimatedText('futurista.'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: heightBox),
            Container(
              width: MediaQuery.of(context).size.width,
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: DelayedDisplay(
                  delay: Duration(milliseconds: 1200),
                  child: Text(
                    'E sabemos como impactar os seus clientes.',
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
                        widget.navigatorController.setFuturistic();
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
                                  'modo futurista ',
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
                          width: titleSize * 2.84,
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
    );
  }
}
