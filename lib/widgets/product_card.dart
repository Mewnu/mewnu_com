import "package:flutter/material.dart";
import "dart:ui";
import "package:mewnu/models/product_model.dart";
import 'package:delayed_display/delayed_display.dart';

class ProductCard extends StatefulWidget {
  ProductCard({
    this.productsList,
    this.index,
    this.currentIndex,
    this.onTapNext,
    this.onTapPrevious,
    this.width,
    this.isEnabled,
  });
  final List<ProductModel> productsList;
  final int index;
  final int currentIndex;
  final bool isEnabled;
  final VoidCallback onTapPrevious;
  final VoidCallback onTapNext;
  final double width;
  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isHover = false;
  bool isHoverPrevious = false;
  bool isHoverNext = false;
  ProductModel product;

  @override
  Widget build(BuildContext context) {
    int i1 = widget.currentIndex == 0
        ? widget.productsList.length - 1
        : widget.currentIndex - 1;
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.height,
          child: widget.currentIndex == widget.index ||
                  widget.currentIndex == widget.index - 1 ||
                  widget.currentIndex - widget.productsList.length ==
                      widget.index - 1
              ? Hero(
                  tag: widget.productsList[widget.index].id,
                  child: Image.asset(
                    widget.productsList[widget.index].image,
                  ),
                )
              : i1 == widget.index
                  ? Hero(
                      tag: widget.productsList[widget.index].id,
                      child: Image.asset(
                        widget.productsList[widget.index].imageBlur,
                      ),
                    )
                  : Hero(
                      tag: widget.productsList[widget.index].id,
                      child: Image.asset(
                        widget.productsList[widget.index].imageBlur2,
                      ),
                    ),
        ),
        Positioned.fill(
          child: Container(
            color: Colors.blue,
            height: 300,
            width: 300,
            child: Text('oi', style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        AnimatedContainer(
          duration: Duration(milliseconds: 0),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.height,
          child: widget.currentIndex == widget.index ||
                  widget.currentIndex == widget.index - 1 ||
                  widget.currentIndex - widget.productsList.length ==
                      widget.index - 1
              ? BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 1,
                    sigmaY: 1,
                  ),
                  child: Container(
                    color: Colors.transparent,
                  ),
                )
              : i1 == widget.index
                  ? BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 100,
                        sigmaY: 100,
                      ),
                      child: Container(
                        color: Colors.transparent,
                      ),
                    )
                  : BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 100,
                        sigmaY: 100,
                      ),
                      child: Container(
                        color: Colors.transparent,
                      ),
                    ),
        ),
        Container(
          width: MediaQuery.of(context).size.height,
          height: MediaQuery.of(context).size.height,
          child: Row(
            children: [
              Expanded(
                child: InkWell(
                  onHover: widget.isEnabled
                      ? (value) {
                          setState(() {
                            isHoverPrevious = value;
                          });
                        }
                      : (value) {},
                  onTap: widget.isEnabled
                      ? () {
                          setState(() {
                            isHoverPrevious = false;
                          });
                          widget.onTapPrevious();
                        }
                      : () {},
                  child: isHoverPrevious
                      ? DelayedDisplay(
                          delay: Duration(milliseconds: 0),
                          fadingDuration: Duration(milliseconds: 300),
                          slidingBeginOffset: Offset(-0.1, 0),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(64, 0, 0, 64),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: RotatedBox(
                                quarterTurns: -2,
                                child: Image.asset(
                                  'assets/images/arrow_circle_foward.png',
                                  width: 32,
                                ),
                              ),
                            ),
                          ),
                        )
                      : Container(),
                ),
              ),
              Expanded(
                child: InkWell(
                  onHover: widget.isEnabled
                      ? (value) {
                          setState(() {
                            isHoverNext = value;
                          });
                        }
                      : (value) {},
                  onTap: widget.isEnabled
                      ? () {
                          setState(() {
                            isHoverNext = false;
                          });
                          widget.onTapNext();
                        }
                      : () {},
                  child: isHoverNext
                      ? DelayedDisplay(
                          delay: Duration(milliseconds: 0),
                          fadingDuration: Duration(milliseconds: 300),
                          slidingBeginOffset: Offset(0.1, 0),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(0, 0, 64, 64),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Image.asset(
                                'assets/images/arrow_circle_foward.png',
                                width: 32,
                              ),
                            ),
                          ),
                        )
                      : Container(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
