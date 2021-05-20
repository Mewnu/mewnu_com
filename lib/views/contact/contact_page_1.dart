import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';

class HomePage1 extends StatefulWidget {
  @override
  _HomePage1State createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  @override
  Widget build(BuildContext context) {
    double padding = MediaQuery.of(context).size.width / 6;
    double titleSize = MediaQuery.of(context).size.width / 21.2;
    return Container(
      padding: EdgeInsets.fromLTRB(padding, 0, padding, 0),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.black,
      child: Container(
        // color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                DelayedDisplay(
                  delay: Duration(milliseconds: 200),
                  child: Text(
                    'Estamos ',
                    style: TextStyle(
                      fontSize: titleSize,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                DelayedDisplay(
                  delay: Duration(milliseconds: 300),
                  child: Text(
                    'em ',
                    style: TextStyle(
                      fontSize: titleSize,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                DelayedDisplay(
                  delay: Duration(milliseconds: 400),
                  child: Text(
                    'todos ',
                    style: TextStyle(
                      fontSize: titleSize,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                DelayedDisplay(
                  delay: Duration(milliseconds: 500),
                  child: Text(
                    'os ',
                    style: TextStyle(
                      fontSize: titleSize,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                DelayedDisplay(
                  delay: Duration(milliseconds: 600),
                  child: Text(
                    'lugares ',
                    style: TextStyle(
                      fontSize: titleSize,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                DelayedDisplay(
                  delay: Duration(milliseconds: 700),
                  child: Text(
                    'e ',
                    style: TextStyle(
                      fontSize: titleSize * 1.137,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                DelayedDisplay(
                  delay: Duration(milliseconds: 800),
                  child: Text(
                    'em ',
                    style: TextStyle(
                      fontSize: titleSize * 1.137,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                DelayedDisplay(
                  delay: Duration(milliseconds: 900),
                  child: Text(
                    'todos ',
                    style: TextStyle(
                      fontSize: titleSize * 1.137,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                DelayedDisplay(
                  delay: Duration(milliseconds: 1000),
                  child: Text(
                    'os ',
                    style: TextStyle(
                      fontSize: titleSize * 1.137,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                DelayedDisplay(
                  delay: Duration(milliseconds: 1100),
                  child: Text(
                    'momentos. ',
                    style: TextStyle(
                      fontSize: titleSize * 1.13,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                DelayedDisplay(
                  delay: Duration(milliseconds: 1400),
                  child: Text(
                    'Sempre a sua disposição.',
                    style: TextStyle(
                      fontSize: titleSize * 1.17,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
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
