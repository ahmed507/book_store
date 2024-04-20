import 'package:book_shop/application/book/cart/cart_bloc.dart';
import 'package:book_shop/injection.dart';
import 'package:book_shop/presentation/components/cart/cart_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<CartBloc>(),
      child: Scaffold(
        appBar: AppBar(title: const Text('Cart')),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BlocBuilder<CartBloc, CartState>(
            buildWhen: (previous, current) =>
                previous.cart != current.cart ||
                previous.totalPrice != current.totalPrice,
            builder: (context, state) {
              return Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: state.cart!.items.length,
                      itemBuilder: (context, index) {
                        return CartItemWidget(
                          cartItem: state.cart!.items[index],
                        );
                      },
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Total',
                                style: Theme.of(context).textTheme.labelLarge!),
                            Text('${state.totalPrice.toStringAsFixed(2)} \$',
                                style: Theme.of(context).textTheme.labelLarge!),
                          ],
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text('Checkout'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
