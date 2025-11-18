import 'package:ecommerce_riverpod/common/cart_icon.dart';
import 'package:ecommerce_riverpod/common/favorite_icon.dart';
import 'package:ecommerce_riverpod/providers/cart_provider.dart';
import 'package:ecommerce_riverpod/providers/product_provider.dart';
import 'package:ecommerce_riverpod/providers/wishlist_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final allProducts = ref.watch(productsProvider);
    final cartProducts = ref.watch(cartProvider);
    final favoriteProducts = ref.watch(favoriteProvider);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Garage Sale Products'),
        actions: const [FavoriteIcon(), CartIcon()],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.builder(
          itemCount: allProducts.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            childAspectRatio: 0.9,
          ),
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.all(10),
              color: Colors.blueGrey.withValues(alpha: 0.05),
              child: Column(
                children: [
                  Image.asset(allProducts[index].image, width: 60, height: 60),
                  Text(allProducts[index].title),
                  Text('£${allProducts[index].price}'),
                  if (cartProducts.contains(allProducts[index]))
                    TextButton(
                      onPressed: () {
                        ref
                            .read(cartProvider.notifier)
                            .removeProduct(allProducts[index]);
                      },
                      child: const Text('Remove'),
                    ),
                  if (!cartProducts.contains(allProducts[index]))
                    TextButton(
                      onPressed: () {
                        ref
                            .read(cartProvider.notifier)
                            .addProduct(allProducts[index]);
                      },
                      child: const Text('Add to Cart'),
                    ),
                  if (!favoriteProducts.contains(allProducts[index]))
                    GestureDetector(
                      onTap: () {
                        ref
                            .read(favoriteProvider.notifier)
                            .addFavorite(allProducts[index]);
                      },
                      child: const Icon(Icons.favorite_outline),
                    ),
                  if (favoriteProducts.contains(allProducts[index]))
                    GestureDetector(
                      onTap: () {
                        ref
                            .read(favoriteProvider.notifier)
                            .removeFavorite(allProducts[index]);
                      },
                      child: const Icon(Icons.favorite, color: Colors.red),
                    ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
