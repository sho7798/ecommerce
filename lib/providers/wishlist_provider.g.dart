// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wishlist_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(FavoriteNotifier)
const favoriteProvider = FavoriteNotifierProvider._();

final class FavoriteNotifierProvider
    extends $NotifierProvider<FavoriteNotifier, Set<Product>> {
  const FavoriteNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'favoriteProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$favoriteNotifierHash();

  @$internal
  @override
  FavoriteNotifier create() => FavoriteNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Set<Product> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Set<Product>>(value),
    );
  }
}

String _$favoriteNotifierHash() => r'4929dd462fa3c614c30b6cff79fbbd34701de4ef';

abstract class _$FavoriteNotifier extends $Notifier<Set<Product>> {
  Set<Product> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<Set<Product>, Set<Product>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Set<Product>, Set<Product>>,
              Set<Product>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
