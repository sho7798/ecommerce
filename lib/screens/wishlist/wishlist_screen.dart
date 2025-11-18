import 'package:ecommerce_riverpod/providers/wishlist_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavoriteScreen extends ConsumerStatefulWidget {
  const FavoriteScreen({super.key});

  @override
  ConsumerState<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends ConsumerState<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    final favoriteProduct = ref.watch(favoriteProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Wishlists'), centerTitle: true),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Column(
              children: favoriteProduct.map((product) {
                return Container(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    children: [
                      Image.asset(product.image, width: 60, height: 60),
                      const SizedBox(width: 10),
                      Text('${product.title}...'),
                      const Expanded(child: SizedBox()),
                      Text('£${product.price}'),
                      const SizedBox(width: 20),
                      GestureDetector(
                        onTap: () {
                          ref
                              .read(favoriteProvider.notifier)
                              .removeFavorite(product);
                        },
                        child: const Icon(Icons.delete, color: Colors.red),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
