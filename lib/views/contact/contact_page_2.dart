import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';

class HomePage2 extends StatefulWidget {
  @override
  _HomePage2State createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  @override
  Widget build(BuildContext context) {
    double padding = MediaQuery.of(context).size.width / 6;
    double titleSize = MediaQuery.of(context).size.width / 20;
    // return ListView(
    //   children: [
    return Container(
      padding: EdgeInsets.fromLTRB(padding, 0, padding, 0),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.grey[900],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 16),
          Row(
            children: [
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
            ],
          ),
          SizedBox(height: 16),
          Row(
            children: [
              DelayedDisplay(
                delay: Duration(milliseconds: 800),
                child: Text(
                  '+55(61)99342-4369',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[300],
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
                  'Email',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
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
                  'support@mewnu.com',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.grey[300],
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
                  'Endereço',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
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
                  'SHIS QL 18 Conj. 7, 16, Bsb.',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[300],
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
                  'Mídias Sociais',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
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
                  'FB',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[300],
                    // fontFamily: 'Public_Sans',
                    // fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              SizedBox(width: 20),
              DelayedDisplay(
                delay: Duration(milliseconds: 800),
                child: Text(
                  'IG',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[300],
                    // fontFamily: 'Public_Sans',
                    // fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              SizedBox(width: 20),
              DelayedDisplay(
                delay: Duration(milliseconds: 800),
                child: Text(
                  'LI',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[300],
                    // fontFamily: 'Public_Sans',
                    // fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ],
          ),
          //     DelayedDisplay(
          //       delay: Duration(milliseconds: 1000),
          //       child: Text(
          //         'agência ',
          //         style: TextStyle(
          //           fontSize: titleSize,
          //           // color: Colors.white,
          //           fontWeight: FontWeight.w600,
          //         ),
          //       ),
          //     ),
          //     DelayedDisplay(
          //       delay: Duration(milliseconds: 1200),
          //       child: Text(
          //         'de',
          //         style: TextStyle(
          //           fontSize: titleSize,
          //           // color: Colors.white,
          //           fontWeight: FontWeight.w600,
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          // SizedBox(height:16),
          // Row(
          //   children: [
          //     DelayedDisplay(
          //       delay: Duration(milliseconds: 600),
          //       child: Text(
          //         'webdesign ',
          //         style: TextStyle(
          //           fontSize: titleSize / 1.02,
          //           // color: Colors.white,
          //           fontWeight: FontWeight.w600,
          //         ),
          //       ),
          //     ),
          //     DelayedDisplay(
          //       delay: Duration(milliseconds: 400),
          //       slidingBeginOffset: Offset(0.35, 0),
          //       child: Text(
          //         'minimalista. ',
          //         style: TextStyle(
          //           fontSize: titleSize / 1.02,
          //           // color: Colors.white,
          //           fontWeight: FontWeight.w600,
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          // SizedBox(height: padding / 13.6),
          // SizedBox(height:16),
          // Row(
          //   children: [
          //     DelayedDisplay(
          //       delay: Duration(milliseconds: 2400),
          //       child: Text(
          //         'E ',
          //         style: TextStyle(
          //           fontSize: titleSize / 1.88,
          //           // color: Colors.white,
          //           fontWeight: FontWeight.w600,
          //         ),
          //       ),
          //     ),
          //     DelayedDisplay(
          //       delay: Duration(milliseconds: 2600),
          //       child: Text(
          //         'sabemos ',
          //         style: TextStyle(
          //           fontSize: titleSize / 1.88,
          //           // color: Colors.white,
          //           fontWeight: FontWeight.w600,
          //         ),
          //       ),
          //     ),
          //     DelayedDisplay(
          //       delay: Duration(milliseconds: 2800),
          //       child: Text(
          //         'como ',
          //         style: TextStyle(
          //           fontSize: titleSize / 1.88,
          //           // color: Colors.white,
          //           fontWeight: FontWeight.w600,
          //         ),
          //       ),
          //     ),
          //     DelayedDisplay(
          //       delay: Duration(milliseconds: 3000),
          //       child: Text(
          //         'impactar ',
          //         style: TextStyle(
          //           fontSize: titleSize / 1.88,
          //           // color: Colors.white,
          //           fontWeight: FontWeight.w600,
          //         ),
          //       ),
          //     ),
          //     DelayedDisplay(
          //       delay: Duration(milliseconds: 2000),
          //       child: Text(
          //         'os ',
          //         style: TextStyle(
          //           fontSize: titleSize / 1.88,
          //           // color: Colors.white,
          //           fontWeight: FontWeight.w600,
          //         ),
          //       ),
          //     ),
          //     DelayedDisplay(
          //       delay: Duration(milliseconds: 3400),
          //       child: Text(
          //         'seus ',
          //         style: TextStyle(
          //           fontSize: titleSize / 1.88,
          //           // color: Colors.white,
          //           fontWeight: FontWeight.w600,
          //         ),
          //       ),
          //     ),
          //     DelayedDisplay(
          //       delay: Duration(milliseconds: 3400),
          //       child: Text(
          //         'clientes.',
          //         style: TextStyle(
          //           fontSize: titleSize / 1.88,
          //           // color: Colors.white,
          //           fontWeight: FontWeight.w600,
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
    // Container(
    //   padding: EdgeInsets.fromLTRB(padding, 0, padding, 0),
    //   color: Colors.grey[100],
    //   height: MediaQuery.of(context).size.height,
    //   width: MediaQuery.of(context).size.width,
    //   child: Container(
    //     // color: Colors.red,
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       // crossAxisAlignment: CrossAxisAlignment.center,
    //       children: [
    // SizedBox(height:16),
    // Row(
    //           children: [
    //             DelayedDisplay(
    //               delay: Duration(milliseconds: 2400),
    //               child: Text(
    //                 'E ',
    //                 style: TextStyle(
    //                   fontSize: titleSize / 1.88,
    //                   // color: Colors.white,
    //                   fontWeight: FontWeight.w600,
    //                 ),
    //               ),
    //             ),
    //             DelayedDisplay(
    //               delay: Duration(milliseconds: 2600),
    //               child: Text(
    //                 'sabemos ',
    //                 style: TextStyle(
    //                   fontSize: titleSize / 1.88,
    //                   // color: Colors.white,
    //                   fontWeight: FontWeight.w600,
    //                 ),
    //               ),
    //             ),
    //             DelayedDisplay(
    //               delay: Duration(milliseconds: 2800),
    //               child: Text(
    //                 'como ',
    //                 style: TextStyle(
    //                   fontSize: titleSize / 1.88,
    //                   // color: Colors.white,
    //                   fontWeight: FontWeight.w600,
    //                 ),
    //               ),
    //             ),
    //             DelayedDisplay(
    //               delay: Duration(milliseconds: 3000),
    //               child: Text(
    //                 'impactar ',
    //                 style: TextStyle(
    //                   fontSize: titleSize / 1.88,
    //                   // color: Colors.white,
    //                   fontWeight: FontWeight.w600,
    //                 ),
    //               ),
    //             ),
    //             DelayedDisplay(
    //               delay: Duration(milliseconds: 2000),
    //               child: Text(
    //                 'os ',
    //                 style: TextStyle(
    //                   fontSize: titleSize / 1.88,
    //                   // color: Colors.white,
    //                   fontWeight: FontWeight.w600,
    //                 ),
    //               ),
    //             ),
    //             DelayedDisplay(
    //               delay: Duration(milliseconds: 3400),
    //               child: Text(
    //                 'seus ',
    //                 style: TextStyle(
    //                   fontSize: titleSize / 1.88,
    //                   // color: Colors.white,
    //                   fontWeight: FontWeight.w600,
    //                 ),
    //               ),
    //             ),
    //             DelayedDisplay(
    //               delay: Duration(milliseconds: 3400),
    //               child: Text(
    //                 'clientes.',
    //                 style: TextStyle(
    //                   fontSize: titleSize / 1.88,
    //                   // color: Colors.white,
    //                   fontWeight: FontWeight.w600,
    //                 ),
    //               ),
    //             ),
    //           ],
    //         ),
    //       ],
    //     ),
    //   ),
    // ),
    //   ],
    // );
  }
}
