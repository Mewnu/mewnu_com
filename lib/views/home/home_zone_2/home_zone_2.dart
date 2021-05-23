import 'dart:ui';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:mewnu/views/home/home_zone_2/home_zone_2_techs.dart';

class HomeZone2 extends StatefulWidget {
  @override
  _HomeZone2State createState() => _HomeZone2State();
}

class _HomeZone2State extends State<HomeZone2> {
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
    double textSizeRow3 = width / 16.5;
    double heightBox = width / 56;

    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(padding, 0, padding, 0),
              color: Colors.grey[100],
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
                            delay: Duration(milliseconds: 200),
                            slidingBeginOffset: Offset(0.0, -0.35),
                            child: Text(
                              'Utilizamos ',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          DelayedDisplay(
                            delay: Duration(milliseconds: 600),
                            child: Text(
                              'as mesmas',
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
                        delay: Duration(milliseconds: 400),
                        child: Text(
                          'tecnologias que as multinacionais.',
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
                        delay: Duration(milliseconds: 800),
                        child: Text(
                          'As melhores tecnologias do mundo.',
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
                                        'ver tecnologias ',
                                        style: TextStyle(
                                          fontFamily: 'Red_Hat_Text',
                                          fontSize: textSizeRow3 / 2.39,
                                          color: Colors.grey[400],
                                          fontWeight: FontWeight.w100,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: textSizeRow3 / 10,
                                      ),
                                      child: Icon(
                                        Icons.call_made,
                                        size: textSizeRow3 / 2.6,
                                        color: Colors.grey[400],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              AnimatedContainer(
                                duration: Duration(milliseconds: 200),
                                height: 4,
                                width: textSizeRow3 * 2.88,
                                decoration: BoxDecoration(
                                  border: Border(
                                    top: BorderSide(
                                      color: Colors.grey[200],
                                      width:
                                          _isHover || _showDeadlines ? 4 : 0,
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
                        HomeZone2Techs(onBack: onBack),
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
