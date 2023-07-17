class Products {

  Products.fromJson(dynamic json) {
    id = json['id'];
    company = json['company'];
    name = json['name'];
    type = json['type'];
    price = json['price'];
    image = json['image'];
    description = json['description'];
  }
  int? id;
  String? company;
  String? name;
  String? type;
  String? price;
  String? image;
  String? description;
}