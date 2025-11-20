import 'package:ecommerce_riverpod/providers/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CartScreen extends ConsumerStatefulWidget {
  const CartScreen({super.key});

  @override
  ConsumerState<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends ConsumerState<CartScreen> {
  bool showCoupon = true;

  @override
  Widget build(BuildContext context) {
    final cartProducts = ref.watch(cartProvider);
    final total = ref.watch(cartTotalProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Carts'), centerTitle: true),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: (cartProducts.isEmpty)
            ? Center(
                child: Text(
                  'Your cart is empty!!!',
                  style: TextStyle(fontSize: 16),
                ),
              )
            : Column(
                children: [
                  Column(
                    children: cartProducts.map((product) {
                      return Container(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: Row(
                          children: [
                            Image.asset(product.image, width: 60, height: 60),
                            const SizedBox(width: 10),
                            Text('${product.title}...'),
                            const Expanded(child: SizedBox()),
                            Text('${product.price} MMK'),
                            const SizedBox(width: 20),
                            GestureDetector(
                              onTap: () {
                                ref
                                    .read(cartProvider.notifier)
                                    .removeProduct(product);
                              },
                              child: const Icon(
                                Icons.delete,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),

                  // output totals here
                  if (total != 0) Text('Total price - $total MMK'),
                ],
              ),
      ),
    );
  }
}
