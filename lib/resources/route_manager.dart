import 'package:ecommerce_riverpod/models/product.dart';
import 'package:ecommerce_riverpod/screens/cart/cart_screen.dart';
import 'package:ecommerce_riverpod/screens/detail/detail.dart';
import 'package:ecommerce_riverpod/screens/home/home_screen.dart';
import 'package:ecommerce_riverpod/screens/wishlist/wishlist_screen.dart';
import 'package:go_router/go_router.dart';

class Routes {
  static const String homeRoute = '/';
  static const String wishlistRoute = '/wishlist';
  static const String cartRoute = '/cart';
  static const String detailRoute = '/detail';
}

final routeGenerator = GoRouter(
  routes: [
    GoRoute(
      path: Routes.homeRoute,
      builder: (context, state) {
        return HomeScreen();
      },
    ),
    GoRoute(
      path: Routes.wishlistRoute,
      builder: (context, state) {
        return FavoriteScreen();
      },
    ),
    GoRoute(
      path: Routes.cartRoute,
      builder: (context, state) {
        return CartScreen();
      },
    ),
    GoRoute(
      path: Routes.detailRoute,
      builder: (context, state) {
        final product = state.extra as Product;
        return DetailScreen(item: product);
      },
    ),
  ],
);
