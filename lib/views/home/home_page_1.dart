import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';

class HomePage1 extends StatefulWidget {
  @override
  _HomePage1State createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double padding = MediaQuery.of(context).size.width / 6;
    double titleSize = width / 16.6;
    return Container(
      padding: EdgeInsets.fromLTRB(padding, 0, padding, 0),
      height: MediaQuery.of(context).size.height,
      width: width,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              DelayedDisplay(
                delay: Duration(milliseconds: 400),
                slidingBeginOffset: Offset(0.0, -0.35),
                child: Text(
                  'Somos ',
                  style: TextStyle(
                    fontSize: titleSize,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              DelayedDisplay(
                delay: Duration(milliseconds: 800),
                child: Text(
                  'uma ',
                  style: TextStyle(
                    fontSize: titleSize,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              DelayedDisplay(
                delay: Duration(milliseconds: 1000),
                child: Text(
                  'agência ',
                  style: TextStyle(
                    fontSize: titleSize,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              DelayedDisplay(
                delay: Duration(milliseconds: 1200),
                child: Text(
                  'de',
                  style: TextStyle(
                    fontSize: titleSize,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              DelayedDisplay(
                delay: Duration(milliseconds: 600),
                child: Text(
                  'webdesign ',
                  style: TextStyle(
                    fontSize: titleSize / 1.02,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              DelayedDisplay(
                delay: Duration(milliseconds: 400),
                slidingBeginOffset: Offset(0.35, 0),
                child: Text(
                  'minimalista.',
                  style: TextStyle(
                    fontSize: titleSize / 1.02,
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
                delay: Duration(milliseconds: 1000),
                child: Text(
                  'E ',
                  style: TextStyle(
                    fontSize: titleSize / 1.88,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              DelayedDisplay(
                delay: Duration(milliseconds: 1200),
                child: Text(
                  'sabemos ',
                  style: TextStyle(
                    fontSize: titleSize / 1.88,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              DelayedDisplay(
                delay: Duration(milliseconds: 1400),
                child: Text(
                  'como ',
                  style: TextStyle(
                    fontSize: titleSize / 1.88,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              DelayedDisplay(
                delay: Duration(milliseconds: 1600),
                child: Text(
                  'impactar ',
                  style: TextStyle(
                    fontSize: titleSize / 1.88,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              DelayedDisplay(
                delay: Duration(milliseconds: 1800),
                child: Text(
                  'os ',
                  style: TextStyle(
                    fontSize: titleSize / 1.88,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              DelayedDisplay(
                delay: Duration(milliseconds: 2000),
                child: Text(
                  'seus ',
                  style: TextStyle(
                    fontSize: titleSize / 1.88,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              DelayedDisplay(
                delay: Duration(milliseconds: 2200),
                child: Text(
                  'clientes.',
                  style: TextStyle(
                    fontSize: titleSize / 1.88,
                    fontWeight: FontWeight.w600,
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
