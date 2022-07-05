// import 'dart:convert';
//
// // Produk produkFromJson(String str) => Produk.fromJson(json.decode(str));
// //
// // String produkToJson(Produk data) => json.encode(data.toJson());
// //
// // class Produk {
// //   Produk({
// //     required this.products,
// //     required this.total,
// //     required this.skip,
// //     required this.limit,
// //   });
// //
// //   List<Product> products;
// //   int total;
// //   int skip;
// //   int limit;
// //
// //   factory Produk.fromJson(Map<String, dynamic> json) => Produk(
// //     products: List<Product>.from(
// //         json["products"].map((x) => Product.fromJson(x))),
// //     total: json["total"],
// //     skip: json["skip"],
// //     limit: json["limit"],
// //   );
// //
// //   Map<String, dynamic> toJson() => {
// //     "products": List<dynamic>.from(products.map((x) => x.toJson())),
// //     "total": total,
// //     "skip": skip,
// //     "limit": limit,
// //   };
// // }
//
// class ProductModel {
//   ProductModel({
//     required this.id,
//     required this.title,
//     required this.description,
//     required this.price,
//     required this.discountPercentage,
//     required this.rating,
//     required this.stock,
//     required this.brand,
//     required this.category,
//     required this.thumbnail,
//     required this.images,
//   });
//
//   int id;
//   String title;
//   String description;
//   int price;
//   double discountPercentage;
//   double rating;
//   int stock;
//   String brand;
//   String category;
//   String thumbnail;
//   List<String> images;
//
//   factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
//     id: json["id"],
//     title: json["title"],
//     description: json["description"],
//     price: json["price"],
//     discountPercentage: json["discountPercentage"].toDouble(),
//     rating: json["rating"].toDouble(),
//     stock: json["stock"],
//     brand: json["brand"],
//     category: json["category"],
//     thumbnail: json["thumbnail"],
//     images: List<String>.from(json["images"].map((x) => x)),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "title": title,
//     "description": description,
//     "price": price,
//     "discountPercentage": discountPercentage,
//     "rating": rating,
//     "stock": stock,
//     "brand": brand,
//     "category": category,
//     "thumbnail": thumbnail,
//     "images": List<dynamic>.from(images.map((x) => x)),
//   };
// }
// //
// // class ProductModel {
// //     final int? id;
// //     final String title;
// //     final String description;
// //     final int price;
// //     final double discountPercentage;
// //     final double rating;
// //     final int stock;
// //     final String brand;
// //     final String category;
// //     final String thumbnail;
// //     final List<String> images;
// //
// //     ProductModel({
// //       this.id,
// //       required this.title,
// //       required this.description,
// //       required this.price,
// //       required this.discountPercentage,
// //       required this.rating,
// //       required this.stock,
// //       required this.brand,
// //       required this.category,
// //       required this.thumbnail,
// //       required this.images
// //     });
// //
// //     Map<String, dynamic> toMap() {
// //       return {
// //         'title' : title,
// //         'description' : description,
// //         'price' : price,
// //         'discountPercentage' : discountPercentage,
// //         'rating' : rating,
// //         'stock' : stock,
// //         'brand' : brand,
// //         'category' : category,
// //         'thumbnail' : thumbnail,
// //         'images' : images,
// //       };
// //     }
// // }

class ProductModel {
  ProductModel({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.discountPercentage,
    required this.rating,
    required this.stock,
    required this.brand,
    required this.category,
    required this.thumbnail,
    required this.images,
  });

  int id;
  String title;
  String description;
  int price;
  double discountPercentage;
  double rating;
  int stock;
  String brand;
  String category;
  String thumbnail;
  List<String> images;

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
    id: json["id"],
    title: json["title"],
    description: json["description"],
    price: json["price"],
    discountPercentage: json["discountPercentage"].toDouble(),
    rating: json["rating"].toDouble(),
    stock: json["stock"],
    brand: json["brand"],
    category: json["category"],
    thumbnail: json["thumbnail"],
    images: List<String>.from(json["images"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
  "id": id,
  "title": title,
  "description": description,
  "price": price,
  "discountPercentage": discountPercentage,
  "rating": rating,
  "stock": stock,
  "brand": brand,
  "category": category,
  "thumbnail": thumbnail,
  "images": List<dynamic>.from(images.map((x) => x)),
  };
}