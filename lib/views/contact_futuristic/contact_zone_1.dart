import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';

class ContactFuturisticZone1 extends StatefulWidget {
  @override
  _ContactFuturisticZone1State createState() => _ContactFuturisticZone1State();
}

class _ContactFuturisticZone1State extends State<ContactFuturisticZone1> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double padding = width / 6;

    return Container(
      padding: EdgeInsets.fromLTRB(padding, 0, padding, 0),
      height: MediaQuery.of(context).size.height,
      width: width,
      color: Colors.black,
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
                    delay: Duration(milliseconds: 200),
                    child: Text(
                      'Estamos ',
                      style: TextStyle(
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
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  DelayedDisplay(
                    delay: Duration(milliseconds: 600),
                    child: Text(
                      'lugares',
                      style: TextStyle(
                        color: Colors.white,
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
              child: Row(
                children: [
                  DelayedDisplay(
                    delay: Duration(milliseconds: 700),
                    child: Text(
                      'e ',
                      style: TextStyle(
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
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  DelayedDisplay(
                    delay: Duration(milliseconds: 1100),
                    child: Text(
                      'momentos.',
                      style: TextStyle(
                        color: Colors.white,
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
              child: Row(
                children: [
                  DelayedDisplay(
                    delay: Duration(milliseconds: 1400),
                    child: Text(
                      'Sempre a sua disposição.',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
