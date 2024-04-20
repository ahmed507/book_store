import 'package:book_shop/application/book/all_books/all_books_bloc.dart';
import 'package:book_shop/presentation/components/shared/book_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AllBooksBloc, AllBooksState>(
      listener: (context, state) {
        state.failure.fold(
          () {},
          (a) => ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(a.map(
                unexpected: (_) => 'Unexpected Error',
                serverError: (_) => 'Server Error',
                insufficientPermission: (_) => 'Insufficient Permission',
                notFound: (_) => 'Not Found',
                unableToUpdate: (_) => 'Unable To Update',
              )),
            ),
          ),
        );
      },
      listenWhen: (p, c) => p.failure != c.failure,
      buildWhen: (p, c) =>
          p.wishlistBooks != c.wishlistBooks || p.isLoading != c.isLoading,
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state.books.isEmpty) {
          return const Center(
            child: Text('No Books Found'),
          );
        }
        return GridView.builder(
          itemCount: state.wishlistBooks.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisExtent: 320,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return BookWidget(
              onPressed: () {},
              book: state.wishlistBooks[index],
            );
          },
        );
      },
    );
  }
}
