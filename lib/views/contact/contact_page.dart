import 'package:flutter/material.dart';
import 'package:mewnu/views/contact/contact_zone_1.dart';
import 'package:mewnu/views/contact/contact_zone_2.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      children: [
        ContactZone1(),
        ContactZone2(),
      ],
    );
  }
}
