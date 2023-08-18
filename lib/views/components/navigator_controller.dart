import 'package:rx_notifier/rx_notifier.dart';
import 'package:flutter/material.dart';
import "dart:ui";
import "package:flutter_card_swipper/flutter_card_swiper.dart";
import 'package:mewnu/views/contact/contact_page.dart';
import 'package:mewnu/views/home/home_page.dart';
import 'package:mewnu/views/components/navigator_bar.dart';

class NavigatorController {
  final _index = RxNotifier<int>(0);
  int get index => _index.value;
  set index(int val) => _index.value = val;

  setCurrentSwiperIndex(int val) {
    index = val;
  }

  final _futuristic = RxNotifier<bool>(false);
  bool get futuristic => _futuristic.value;
  set futuristic(bool val) => _futuristic.value = val;

  setFuturistic() {
    futuristic = !futuristic;
  }
}
