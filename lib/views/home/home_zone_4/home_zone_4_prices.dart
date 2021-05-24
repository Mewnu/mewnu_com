import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class HomeZone4Prices extends StatefulWidget {
  HomeZone4Prices({this.onBack});
  final VoidCallback onBack;
  @override
  _HomeZone4PricesState createState() => _HomeZone4PricesState();
}

class _HomeZone4PricesState extends State<HomeZone4Prices> {
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              DelayedDisplay(
                delay: Duration(milliseconds: 0),
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
          SizedBox(height: 16),
          Row(
            children: [
              DelayedDisplay(
                delay: Duration(milliseconds: 400),
                slidingBeginOffset: Offset(0.0, -0.35),
                child: Text(
                  'Hot Site',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            children: [
              DelayedDisplay(
                delay: Duration(milliseconds: 800),
                child: Text(
                  'apartir de 12x R\$167,00',
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
          SizedBox(height: 16),
          Row(
            children: [
              DelayedDisplay(
                delay: Duration(milliseconds: 400),
                slidingBeginOffset: Offset(0.0, -0.35),
                child: Text(
                  'Ecommerce',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            children: [
              DelayedDisplay(
                delay: Duration(milliseconds: 800),
                child: Text(
                  'apartir de 12x R\$250,00',
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
          // SizedBox(height: 16),
          // Row(
          //   children: [
          //     DelayedDisplay(
          //       delay: Duration(milliseconds: 400),
          //       slidingBeginOffset: Offset(0.0, -0.35),
          //       child: Text(
          //         'Leading Pages',
          //         style: TextStyle(
          //           fontSize: 20,
          //           fontWeight: FontWeight.w100,
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          // SizedBox(height: 16),
          // Row(
          //   children: [
          //     DelayedDisplay(
          //       delay: Duration(milliseconds: 800),
          //       child: Text(
          //         'apartir de 12x R\$84,00',
          //         style: TextStyle(
          //           fontSize: 20,
          //           color: Colors.grey[900],
          //           fontFamily: 'Public_Sans',
          //           fontWeight: FontWeight.w100,
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          SizedBox(height: 16),
           Row(
            children: [
              DelayedDisplay(
                delay: Duration(milliseconds: 400),
                slidingBeginOffset: Offset(0.0, -0.35),
                child: Text(
                  'App Mobile',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            children: [
              DelayedDisplay(
                delay: Duration(milliseconds: 800),
                child: Text(
                  'apartir de 12x R\$250,00',
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
          SizedBox(height: 16),
          Row(
            children: [
              DelayedDisplay(
                delay: Duration(milliseconds: 400),
                slidingBeginOffset: Offset(0.0, -0.35),
                child: Text(
                  'Consultoria',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            children: [
              DelayedDisplay(
                delay: Duration(milliseconds: 800),
                child: Text(
                  'apartir de 12x R\$42,00',
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
    );
  }
}
