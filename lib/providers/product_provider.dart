import 'package:ecommerce_riverpod/models/product.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_provider.g.dart';

List<Product> allProducts = [
  Product(
    id: '1',
    title: 'Groovy Shorts',
    price: 12,
    image: 'assets/products/shorts.png',
    information: [
      'Size - Medium',
      'Model No - PPS-s-16',
      'Manufacture - Thailand',
      'Product Summary - It is light, comfortable and can provide a soft touch. It has a reasonable price , and the stitching is neat.',
    ],
  ),
  Product(
    id: '2',
    title: 'Karati Kit',
    price: 34,
    image: 'assets/products/karati.png',
    information: [
      'Size - Medium',
      'Model No - PPS-s-16',
      'Manufacture - Thailand',
      'Product Summary - It is light, comfortable and can provide a soft touch. It has a reasonable price , and the stitching is neat.',
    ],
  ),
  Product(
    id: '3',
    title: 'Denim Jeans',
    price: 54,
    image: 'assets/products/jeans.png',
    information: [
      'Size - Medium',
      'Model No - PPS-s-16',
      'Manufacture - Thailand',
      'Product Summary - It is light, comfortable and can provide a soft touch. It has a reasonable price , and the stitching is neat.',
    ],
  ),
  Product(
    id: '4',
    title: 'Red Backpack',
    price: 14,
    image: 'assets/products/backpack.png',
    information: [
      'Size - Medium',
      'Model No - PPS-s-16',
      'Manufacture - Thailand',
      'Product Summary - It is light, comfortable and can provide a soft touch. It has a reasonable price , and the stitching is neat.',
    ],
  ),
  Product(
    id: '5',
    title: 'Drum & Sticks',
    price: 29,
    image: 'assets/products/drum.png',
    information: [
      'Size - Medium',
      'Model No - PPS-s-16',
      'Manufacture - Thailand',
      'Product Summary - It is light, comfortable and can provide a soft touch. It has a reasonable price , and the stitching is neat.',
    ],
  ),
  Product(
    id: '6',
    title: 'Blue Suitcase',
    price: 44,
    image: 'assets/products/suitcase.png',
    information: [
      'Size - Medium',
      'Model No - PPS-s-16',
      'Manufacture - Thailand',
      'Product Summary - It is light, comfortable and can provide a soft touch. It has a reasonable price , and the stitching is neat.',
    ],
  ),
  Product(
    id: '7',
    title: 'Roller Skates',
    price: 52,
    image: 'assets/products/skates.png',
    information: [
      'Size - Medium',
      'Model No - PPS-s-16',
      'Manufacture - Thailand',
      'Product Summary - It is light, comfortable and can provide a soft touch. It has a reasonable price , and the stitching is neat.',
    ],
  ),
  Product(
    id: '8',
    title: 'Electric Guitar',
    price: 79,
    image: 'assets/products/guitar.png',
    information: [
      'Size - Medium',
      'Model No - PPS-s-16',
      'Manufacture - Thailand',
      'Product Summary - It is light, comfortable and can provide a soft touch. It has a reasonable price , and the stitching is neat.',
    ],
  ),
];

// Generated providers

@riverpod
List<Product> products(ref) {
  return allProducts;
}

@riverpod
List<Product> reducedProducts(ref) {
  return allProducts.where((p) => p.price < 50).toList();
}
