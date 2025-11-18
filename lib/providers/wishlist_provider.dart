import 'package:ecommerce_riverpod/models/product.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'wishlist_provider.g.dart';

@riverpod
class FavoriteNotifier extends _$FavoriteNotifier {
  //initial value
  @override
  Set<Product> build() {
    return {};
  }

  //methods to update state
  void addFavorite(Product product) {
    if (!state.contains(product)) {
      state = {...state, product};
    }
  }

  void removeFavorite(Product product) {
    if (state.contains(product)) {
      state = state.where((p) => p.id != product.id).toSet();
    }
  }
}
