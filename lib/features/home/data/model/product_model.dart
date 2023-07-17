import 'products.dart';

class ProductModel {

  ProductModel.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
    if (json['products'] != null) {
      products = [];
      json['products'].forEach((v) {
        products!.add(Products.fromJson(v));
      });
    }
  }

  int? status;
  String? message;
  List<Products>? products = [];

}