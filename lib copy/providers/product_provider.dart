import "dart:core";
import "package:mewnu/models/product_model.dart";
import "package:mewnu/data/products_data.dart";

class ProductsState {
  final ProductModel product1 = ProductModel.fromMap(productsJson[0]);
  final ProductModel product2 = ProductModel.fromMap(productsJson[1]);
  final ProductModel product3 = ProductModel.fromMap(productsJson[2]);
  final ProductModel product4 = ProductModel.fromMap(productsJson[3]);
  final ProductModel product5 = ProductModel.fromMap(productsJson[4]);
  List<ProductModel> get categoryEarphones =>
      [product1, product2, product3, product4, product5];
}

class CategoryProducts {
  String title;
  List<ProductModel> items;
  CategoryProducts({this.title, this.items});
}

final categoriesProducts = [
  CategoryProducts(
    title: "Earphones",
    items: ProductsState().categoryEarphones,
  ),
];
