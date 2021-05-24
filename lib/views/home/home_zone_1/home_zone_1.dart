import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:mewnu/views/components/navigator_controller.dart';
import "package:flutter_neumorphic/flutter_neumorphic.dart";

class HomeZone1 extends StatefulWidget {
  HomeZone1({
    this.navigatorController,
    this.onTap(i),
  });
  final NavigatorController navigatorController;
  final void Function(int) onTap;
  @override
  _HomeZone1State createState() => _HomeZone1State();
}

class _HomeZone1State extends State<HomeZone1> {
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
    double titleSize2 = width / 15.80;
    double heightBox = width / 160;
    double heightBox2 = width / 50;
    double titleSize = width / 16.18;
    double titleSize3 = width / 38.47;
    return Container(
      padding: EdgeInsets.fromLTRB(padding, 0, padding, 0),
        color: Colors.white,
      child: Container(
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
            SizedBox(height: heightBox),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Row(
                  children: [
                    DelayedDisplay(
                      delay: Duration(milliseconds: 600),
                      child: Text(
                        'desenvolvimento ',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    DelayedDisplay(
                      delay: Duration(milliseconds: 400),
                      slidingBeginOffset: Offset(0.35, 0),
                      child: Text(
                        'minimalista',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: heightBox2),
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
            SizedBox(height: heightBox2),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                DelayedDisplay(
                  delay: Duration(milliseconds: 0),
                  child: InkWell(
                    onTap: () {
                      widget.onTap(1);
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
                                  'ver mais ', // 'modo futurista ',
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
                                  top: titleSize / 20,
                                ),
                                child: Icon(
                                  Icons.arrow_downward,
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
                          width: titleSize * 1.64,
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
