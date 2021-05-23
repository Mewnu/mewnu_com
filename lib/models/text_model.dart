
import "package:flutter/material.dart";

class TextModel {
  String text;
  FontWeight weight;
  TextModel({this.text, this.weight});

  TextModel.fromMap(Map<String, dynamic> map) {
    text = map['text'] as String;
    weight = map['weight'] as FontWeight;
  }
}