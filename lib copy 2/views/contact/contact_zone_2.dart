import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';

class ContactZone2 extends StatefulWidget {
  @override
  _ContactZone2State createState() => _ContactZone2State();
}

class _ContactZone2State extends State<ContactZone2> {
  @override
  Widget build(BuildContext context) {
    double padding = MediaQuery.of(context).size.width / 6;

    return Container(
      padding: EdgeInsets.fromLTRB(padding, 0, padding, 0),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.grey[900],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16),
          DelayedDisplay(
            delay: Duration(milliseconds: 400),
            slidingBeginOffset: Offset(0.0, -0.35),
            child: Text(
              'Whatsapp',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w100,
              ),
            ),
          ),
          SizedBox(height: 16),
          DelayedDisplay(
            delay: Duration(milliseconds: 800),
            child: Text(
              '+55(61) 99342-4369',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey[300],
                fontFamily: 'Public_Sans',
                fontWeight: FontWeight.w100,
              ),
            ),
          ),
          SizedBox(height: 16),
          DelayedDisplay(
            delay: Duration(milliseconds: 400),
            slidingBeginOffset: Offset(0.0, -0.35),
            child: Text(
              'Email',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w100,
              ),
            ),
          ),
          SizedBox(height: 16),
          DelayedDisplay(
            delay: Duration(milliseconds: 800),
            child: Text(
              'suporte@mewnu.com',
              style: TextStyle(
                fontSize: 22,
                color: Colors.grey[300],
                fontFamily: 'Public_Sans',
                fontWeight: FontWeight.w100,
              ),
            ),
          ),
          SizedBox(height: 16),
          DelayedDisplay(
            delay: Duration(milliseconds: 400),
            slidingBeginOffset: Offset(0.0, -0.35),
            child: Text(
              'Horários de funcionamento',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w100,
              ),
            ),
          ),
          SizedBox(height: 16),
          DelayedDisplay(
            delay: Duration(milliseconds: 800),
            child: Text(
              '8:00 às 20:00',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey[300],
                fontFamily: 'Public_Sans',
                fontWeight: FontWeight.w100,
              ),
            ),
          ),
          // SizedBox(height: 16),
          // DelayedDisplay(
          //   delay: Duration(milliseconds: 400),
          //   slidingBeginOffset: Offset(0.0, -0.35),
          //   child: Text(
          //     'Mídias Sociais',
          //     style: TextStyle(
          //       fontSize: 20,
          //       color: Colors.white,
          //       fontWeight: FontWeight.w100,
          //     ),
          //   ),
          // ),
          // SizedBox(height: 16),
          // Row(
          //   children: [
          //     DelayedDisplay(
          //       delay: Duration(milliseconds: 800),
          //       child: Text(
          //         'FB',
          //         style: TextStyle(
          //           fontSize: 20,
          //           color: Colors.grey[300],
          //           fontFamily: 'Public_Sans',
          //         ),
          //       ),
          //     ),
          //     SizedBox(width: 20),
          //     DelayedDisplay(
          //       delay: Duration(milliseconds: 800),
          //       child: Text(
          //         'IG',
          //         style: TextStyle(
          //           fontSize: 20,
          //           color: Colors.grey[300],
          //           fontFamily: 'Public_Sans',
          //         ),
          //       ),
          //     ),
          //     SizedBox(width: 20),
          //     DelayedDisplay(
          //       delay: Duration(milliseconds: 800),
          //       child: Text(
          //         'LI',
          //         style: TextStyle(
          //           fontSize: 20,
          //           color: Colors.grey[300],
          //           fontFamily: 'Public_Sans',
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
