import 'package:book_shop/application/book/all_books/all_books_bloc.dart';
import 'package:book_shop/domain/book/book_model.dart';
import 'package:book_shop/presentation/components/shared/book_details_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookWidget extends StatelessWidget {
  final Function() onPressed;
  final BookModel book;

  const BookWidget({
    Key? key,
    required this.onPressed,
    required this.book,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showBottomSheet(
          context: context,
          builder: (context) {
            // show book details and add to cart
            return BookDetailsWidget(book: book);
          },
        );
      },
      child: Card(
        borderOnForeground: true,
        clipBehavior: Clip.antiAlias,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Image.network(book.imageLink ?? '',
                    height: 200, width: 150, fit: BoxFit.cover,
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
                          color:
                              Theme.of(context).primaryColor.withOpacity(0.3),
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
              book.price != null
                  ? '${book.price!.toDouble().toStringAsFixed(2)} \$'
                  : '',
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    color: Theme.of(context).primaryColor,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
