import 'package:ecommerce_riverpod/providers/wishlist_provider.dart';
import 'package:ecommerce_riverpod/screens/wishlist/wishlist_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavoriteIcon extends ConsumerWidget {
  const FavoriteIcon({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final numberOfItemsInFavorite = ref.watch(favoriteProvider).length;
    return Stack(
      children: [
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const FavoriteScreen();
                },
              ),
            );
          },
          icon: const Icon(Icons.favorite, color: Colors.red),
        ),
        Positioned(
          child: Container(
            width: 18,
            height: 18,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blueAccent,
            ),
            child: Text(
              numberOfItemsInFavorite.toString(),
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
