import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class HomeZone2Techs extends StatefulWidget {
  HomeZone2Techs({this.onBack});
  final VoidCallback onBack;
  @override
  _HomeZone2TechsState createState() => _HomeZone2TechsState();
}

class _HomeZone2TechsState extends State<HomeZone2Techs> {
  bool _isHover = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double padding = width / 6;
    return Container(
      padding: EdgeInsets.fromLTRB(padding, 0, padding, 0),
      height: MediaQuery.of(context).size.height,
      width: width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              DelayedDisplay(
                delay: Duration(milliseconds: 400), //milliseconds: 2400),
                child: InkWell(
                  onTap: () {
                    widget.onBack();
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
                            Padding(
                                padding: EdgeInsets.only(
                                  top: 2,
                                  right: 2,
                                ),
                                child: Transform(
                                  alignment: Alignment.center,
                                  transform: Matrix4.rotationY(math.pi),
                                  child: Icon(
                                    Icons.call_made,
                                    size: 20,
                                  ),
                                )),
                            Container(
                              child: Text(
                                'voltar',
                                style: TextStyle(
                                  fontFamily: 'Red_Hat_Text',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w100,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      AnimatedContainer(
                        duration: Duration(milliseconds: 200),
                        height: _isHover ? 12 : 0,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DelayedDisplay(
                    delay: Duration(milliseconds: 100),
                    slidingBeginOffset: Offset(0.0, -0.35),
                    child: Text(
                      'Front-end',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  DelayedDisplay(
                    delay: Duration(milliseconds: 200),
                    child: Text(
                      'Flutter',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey[900],
                        fontFamily: 'Public_Sans',
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ),
                  DelayedDisplay(
                    delay: Duration(milliseconds: 200),
                    child: Text(
                      'Vue',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey[900],
                        fontFamily: 'Public_Sans',
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ),
                  DelayedDisplay(
                    delay: Duration(milliseconds: 200),
                    child: Text(
                      'Angular',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey[900],
                        fontFamily: 'Public_Sans',
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ),
                  DelayedDisplay(
                    delay: Duration(milliseconds: 600),
                    child: Text(
                      '...',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey[900],
                        fontFamily: 'Public_Sans',
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  DelayedDisplay(
                    delay: Duration(milliseconds: 300),
                    slidingBeginOffset: Offset(0.0, -0.35),
                    child: Text(
                      'Back-end',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  DelayedDisplay(
                    delay: Duration(milliseconds: 400),
                    child: Text(
                      'Node',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey[900],
                        fontFamily: 'Public_Sans',
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ),
                  DelayedDisplay(
                    delay: Duration(milliseconds: 500),
                    child: Text(
                      'Dart',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey[900],
                        fontFamily: 'Public_Sans',
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ),
                  DelayedDisplay(
                    delay: Duration(milliseconds: 500),
                    child: Text(
                      'GraphQL',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey[900],
                        fontFamily: 'Public_Sans',
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ),
                   DelayedDisplay(
                    delay: Duration(milliseconds: 600),
                    child: Text(
                      '...',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey[900],
                        fontFamily: 'Public_Sans',
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 32),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DelayedDisplay(
                    delay: Duration(milliseconds: 100),
                    slidingBeginOffset: Offset(0.0, -0.35),
                    child: Text(
                      'Banco de dados',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  DelayedDisplay(
                    delay: Duration(milliseconds: 300),
                    child: Text(
                      'PostgreSQL',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey[900],
                        fontFamily: 'Public_Sans',
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ),
                  DelayedDisplay(
                    delay: Duration(milliseconds: 600),
                    child: Text(
                      'MongoDB',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey[900],
                        fontFamily: 'Public_Sans',
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ),
                  DelayedDisplay(
                    delay: Duration(milliseconds: 700),
                    child: Text(
                      'Firebase',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey[900],
                        fontFamily: 'Public_Sans',
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ),
                   DelayedDisplay(
                    delay: Duration(milliseconds: 800),
                    child: Text(
                      '...',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey[900],
                        fontFamily: 'Public_Sans',
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  DelayedDisplay(
                    delay: Duration(milliseconds: 100),
                    slidingBeginOffset: Offset(0.0, -0.35),
                    child: Text(
                      'Utilizando Flutter:',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                   DelayedDisplay(
                    delay: Duration(milliseconds: 300),
                    child: Text(
                      'Nubank',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey[900],
                        fontFamily: 'Public_Sans',
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ),
                  DelayedDisplay(
                    delay: Duration(milliseconds: 300),
                    child: Text(
                      'Microsoft',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey[900],
                        fontFamily: 'Public_Sans',
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ),
                  DelayedDisplay(
                    delay: Duration(milliseconds: 600),
                    child: Text(
                      'Samsung',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey[900],
                        fontFamily: 'Public_Sans',
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ),
                   DelayedDisplay(
                    delay: Duration(milliseconds: 600),
                    child: Text(
                      '...',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey[900],
                        fontFamily: 'Public_Sans',
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
