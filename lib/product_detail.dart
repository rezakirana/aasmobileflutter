import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:developer' as developer;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:slicing/product_model.dart';
import 'package:slicing/style.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({
    Key? key,
    // required this.product
    required this.title,
    required this.description,
    required this.price,
    required this.discountPercentage,
    required this.rating,
    required this.stock,
    required this.brand,
    required this.category,
    required this.thumbnail,
    required this.images
  }) : super(key: key);

  // final ProductModel product;
  final String title;
  final String description;
  final int price;
  final double discountPercentage;
  final double rating;
  final int stock;
  final String brand;
  final String category;
  final String thumbnail;
  final List<String> images;
  // final List<dynamic> dataProduct;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text('Data Product'),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(top: 10),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child:
                  CarouselSlider(
                    options: CarouselOptions(height: 150.0),
                    items: images.map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                                color: Colors.white
                            ),
                            child: Image.network(
                              i,
                              fit: BoxFit.fill,
                            ),
                            // child: Text('text $i', style: TextStyle(fontSize: 32.0),)
                          );
                        },
                      );
                    }).toList(),
                  )
                  ,

                ),

                Container(
                    padding:
                    EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Title
                            Text(title, style: ProductTitle),
                            Icon(
                              Icons.favorite,
                              color: Colors.pink,
                              size: 20.0,
                            ),
                          ],
                        ),

                        // Description
                        Text(description,style: ProductDescription),
                        SizedBox(height: 20),
                        Text('Detail Info', style: ProductDetailInfo),
                        Divider(color: Colors.grey),

                        // Harga
                        Row(
                          children: [
                            Container(
                              width: 80,
                              child: Text('Harga', style: ProductItem)),
                            Text(
                              ': Rp ' + price.toString(),
                              style: ProductItem,
                            ),
                          ],
                        ),
                        Divider(color: Colors.grey),

                        // Diskon
                        Row(
                          children: [
                            Container(
                              width: 80,
                              child: Text('Diskon',
                                  style: ProductItem),
                            ),
                            Text(
                              ': ' +
                                  discountPercentage
                                      .toStringAsFixed(0)
                                      .toString() +
                                  '%',
                              style: ProductItem,
                            ),
                          ],
                        ),
                        Divider(color: Colors.grey),

                        // Rating
                        Row(
                          children: [
                            Container(
                              width: 80,
                              child: Text('Rating',
                                  style: ProductItem),
                            ),
                            Text(
                              ': ' + rating.toString(),
                              style: ProductItem,
                            ),
                          ],
                        ),
                        Divider(color: Colors.grey),

                        // Stock
                        Row(
                          children: [
                            Container(
                              width: 80,
                              child: Text('Stok',
                                  style:ProductItem),
                            ),
                            Text(
                              ': ' + stock.toString(),
                              style: ProductItem,
                            ),
                          ],
                        ),
                        Divider(color: Colors.grey),

                        // Brand
                        Row(
                          children: [
                            Container(
                              width: 80,
                              child: Text('Brand',
                                  style: ProductItem),
                            ),
                            Text(
                              ': ' + brand.toString(),
                              style: ProductItem,
                            ),
                          ],
                        ),
                        const Divider(color: Colors.grey),

                        // Kategori
                        Row(
                          children: [
                            Container(
                              width: 80,
                              child: Text('Kategori',
                                  style: ProductItem),
                            ),
                            Text(
                              ': ' + category.toString(),
                              style: ProductItem,
                            ),
                          ],
                        ),
                      ],
                    )),

              ],
            ),
          ),
        )
    );
  }
}

