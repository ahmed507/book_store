import 'package:book_shop/application/book/all_books/all_books_bloc.dart';
import 'package:book_shop/application/book/cart/cart_bloc.dart';
import 'package:book_shop/domain/book/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsWidget extends StatelessWidget {
  final BookModel book;

  const BookDetailsWidget({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Image.network(book.imageLink ?? '',
                          height: 350, width: 250, fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                        return const Center(
                          child: Icon(Icons.error),
                        );
                      }),
                      Positioned(
                        right: 0,
                        child: IconButton(
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
                            // Add to wishlist
                            context.read<AllBooksBloc>().add(
                                  AllBooksEvent.addOrRemoveBookFromWishlist(
                                      bookId: book.id!),
                                );
                          },
                          icon: Icon(
                            book.isInWishList
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color: Theme.of(context).primaryColor,
                            size: 22,
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
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(book.title ?? '',
                      style: Theme.of(context).textTheme.labelLarge!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center),
                  const SizedBox(height: 5),
                  Text(book.author ?? '',
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                            fontWeight: FontWeight.w300,
                          ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center),
                  const SizedBox(height: 5),
                  Text(
                    book.description ?? '',
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                          fontWeight: FontWeight.w400,
                        ),
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Text(
                book.price != null
                    ? '${book.price!.toDouble().toStringAsFixed(2)} \$'
                    : '',
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: Theme.of(context).primaryColor,
                    ),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  // Add to cart
                  context.read<CartBloc>().add(
                        CartEvent.addBookToCart(book.id!),
                      );
                },
                child: const Text('Add to Cart'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
