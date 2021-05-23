import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:mewnu/views/components/navigator_controller.dart';

class HomeFuturisticZone1 extends StatefulWidget {
  HomeFuturisticZone1({this.navigatorController});
  final NavigatorController navigatorController;
  @override
  _HomeFuturisticZone1State createState() => _HomeFuturisticZone1State();
}

class _HomeFuturisticZone1State extends State<HomeFuturisticZone1> {
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
    double titleSize2 = width / 16.60;
    double heightBox = width / 50;
    double titleSize = width / 16.18;
    double titleSize3 = width / 38.47;
    return Container(
      padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
      color: Colors.black,
      child: Container(
        padding: EdgeInsets.fromLTRB(padding, 0, padding, 0),
        color: Colors.white,
        child: Container(
          // color: Colors.blue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    'SOMOS UMA AGÊNCIA DE',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Text(
                    'WEBDESIGN ',
                    style: TextStyle(
                      fontSize: titleSize2,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  DefaultTextStyle(
                    style: TextStyle(
                      fontSize: titleSize2,
                      fontWeight: FontWeight.w600,
                      // fontFamily: 'Horizon',
                    ),
                    child: AnimatedTextKit(
                      repeatForever: true,
                      animatedTexts: [
                        FadeAnimatedText('MINIMALISTA.'),
                        FadeAnimatedText('FUTURISTA.'),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: heightBox),
              Container(
                width: MediaQuery.of(context).size.width,
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    'E SABEMOS COMO IMPACTAR OS SEUS CLIENTES.',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              SizedBox(height: heightBox),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
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
                                  'modo minimalista ',
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
