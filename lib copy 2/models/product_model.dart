import "package:flutter/material.dart";
import "package:mewnu/models/text_model.dart";

class ProductModel {
  String id;
  String name;
  String title;
  List<dynamic> subtitle;
  String desc;
  double price;
  String platform;
  String release;
  String image;
  String imageBlur;
  String imageBlur2;
  String imageBox;
  String imageCable;
  Color color1;
  Color color2;
  ProductModel({
    this.id,
    this.name,
    this.title,
    this.subtitle,
    this.desc,
    this.price,
    this.platform,
    this.release,
    this.image,
    this.imageBlur,
    this.imageBlur2,
    this.imageBox,
    this.imageCable,
    this.color1,
    this.color2,
  });

  ProductModel.fromMap(Map<String, dynamic> map) {
    id = map["id"] as String;
    name = map["name"] as String;
    title = map["title"] as String;
    subtitle =
        map["subtitle"].map((second) => TextModel.fromMap(second)).toList();
    desc = map["desc"] as String;
    price = map["price"] as double;
    platform = map["platform"] as String;
    release = map["release"] as String;
    image = map["image"] as String;
    imageBlur = map["imageBlur"] as String;
    imageBlur2 = map["imageBlur2"] as String;
    imageBox = map["imageBox"] as String;
    imageCable = map["imageCable"] as String;
    color1 = map["color1"] as Color;
    color2 = map["color2"] as Color;
  }
}
