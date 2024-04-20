import 'package:book_shop/application/book/cart/cart_bloc.dart';
import 'package:book_shop/domain/shopping/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartItemWidget extends StatelessWidget {
  final CartItemViewModel cartItem;

  const CartItemWidget({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Card(
      borderOnForeground: true,
      clipBehavior: Clip.antiAlias,
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(cartItem.book.imageLink ?? ''),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const SizedBox(
                height: 140,
                width: 80,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    cartItem.book.title ?? '',
                    style: Theme.of(context).textTheme.labelLarge!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    cartItem.book.author ?? '',
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                          fontWeight: FontWeight.w300,
                        ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    '${cartItem.totalPrice.toStringAsFixed(2)} \$',
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          color: Theme.of(context).primaryColor,
                        ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      IconButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all(
                            Colors.white.withOpacity(0.7),
                          ),
                        ),
                        onPressed: () {
                          // reduce quantity
                          if (cartItem.quantity > 1) {
                            context.read<CartBloc>().add(
                                  CartEvent.updateQuantity(
                                    cartItem.book.id!,
                                    cartItem.quantity - 1,
                                  ),
                                );
                          }
                        },
                        icon: Icon(
                          Icons.remove,
                          color: Theme.of(context).primaryColor,
                          size: 20,
                          shadows: [
                            BoxShadow(
                              color: Theme.of(context)
                                  .primaryColor
                                  .withOpacity(0.3),
                              blurRadius: 10,
                              spreadRadius: 0.5,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(cartItem.quantity.toString(),
                          style:
                              Theme.of(context).textTheme.labelLarge!.copyWith(
                                    color: Theme.of(context).primaryColor,
                                  )),
                      const SizedBox(
                        width: 4,
                      ),
                      IconButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all(
                            Colors.white.withOpacity(0.7),
                          ),
                        ),
                        onPressed: () {
                          // increase quantity
                          context.read<CartBloc>().add(
                                CartEvent.updateQuantity(
                                  cartItem.book.id!,
                                  cartItem.quantity + 1,
                                ),
                              );
                        },
                        icon: Icon(
                          Icons.add,
                          color: Theme.of(context).primaryColor,
                          size: 20,
                          shadows: [
                            BoxShadow(
                              color: Theme.of(context)
                                  .primaryColor
                                  .withOpacity(0.3),
                              blurRadius: 10,
                              spreadRadius: 0.5,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            IconButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                backgroundColor: MaterialStateProperty.all(
                  Colors.white.withOpacity(0.7),
                ),
              ),
              onPressed: () {
                // remove from cart
                context.read<CartBloc>().add(
                      CartEvent.removeBookFromCart(cartItem.book.id!),
                    );
              },
              icon: Icon(
                Icons.delete,
                color: Theme.of(context).primaryColor,
                size: 20,
                shadows: [
                  BoxShadow(
                    color: Theme.of(context).primaryColor.withOpacity(0.3),
                    blurRadius: 10,
                    spreadRadius: 0.5,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
