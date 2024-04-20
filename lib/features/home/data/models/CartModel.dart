class CartModel {
  CartModel({
    this.status,
    this.numOfCartItems,
    this.data,
  });

  CartModel.fromJson(dynamic json) {
    status = json['status'];
    numOfCartItems = json['numOfCartItems'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  String? status;
  int? numOfCartItems;
  Data? data;
}

class Data {
  Data({
    this.cartOwner,
    this.products,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.totalCartPrice,
  });

  Data.fromJson(dynamic json) {
    cartOwner = json['cartOwner'];
    if (json['products'] != null) {
      products = [];
      json['products'].forEach((v) {
        products?.add(Products.fromJson(v));
      });
    }
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    v = json['__v'];
    totalCartPrice = json['totalCartPrice'];
  }

  String? cartOwner;
  List<Products>? products;
  String? createdAt;
  String? updatedAt;
  int? v;
  int? totalCartPrice;
}

class Products {
  Products({
    this.count,
    this.id,
    this.product,
    this.price,
  });

  Products.fromJson(dynamic json) {
    count = json['count'];
    id = json['_id'];
    product =
        json['product'] != null ? Product.fromJson(json['product']) : null;
    price = json['price'];
  }

  int? count;
  String? id;
  Product? product;
  int? price;
}

class Product {
  Product({
    this.subcategory,
    this.id,
    this.title,
    this.quantity,
    this.imageCover,
    this.category,
    this.brand,
    this.ratingsAverage,
  });

  Product.fromJson(dynamic json) {
    if (json['subcategory'] != null) {
      subcategory = [];
      json['subcategory'].forEach((v) {
        subcategory?.add(Subcategory.fromJson(v));
      });
    }
    id = json['_id'];
    title = json['title'];
    quantity = json['quantity'];
    imageCover = json['imageCover'];
    category =
        json['category'] != null ? Category.fromJson(json['category']) : null;
    brand = json['brand'] != null ? Brand.fromJson(json['brand']) : null;
    ratingsAverage = json['ratingsAverage'];
    id = json['id'];
  }

  List<Subcategory>? subcategory;
  String? id;
  String? title;
  int? quantity;
  String? imageCover;
  Category? category;
  Brand? brand;
  double? ratingsAverage;
}

class Brand {
  Brand({
    this.name,
    this.slug,
    this.image,
  });

  Brand.fromJson(dynamic json) {
    name = json['name'];
    slug = json['slug'];
    image = json['image'];
  }

  String? name;
  String? slug;
  String? image;
}

class Category {
  Category({
    this.name,
    this.slug,
    this.image,
  });

  Category.fromJson(dynamic json) {
    name = json['name'];
    slug = json['slug'];
    image = json['image'];
  }

  String? name;
  String? slug;
  String? image;
}

class Subcategory {
  Subcategory({
    this.name,
    this.slug,
    this.category,
  });

  Subcategory.fromJson(dynamic json) {

    name = json['name'];
    slug = json['slug'];
    category = json['category'];
  }

  String? name;
  String? slug;
  String? category;
}
