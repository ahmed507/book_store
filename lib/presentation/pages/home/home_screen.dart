import 'package:book_shop/application/book/all_books/all_books_bloc.dart';
import 'package:book_shop/presentation/components/home/search_field_widget.dart';
import 'package:book_shop/presentation/components/shared/book_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SearchFieldWidget(),
          const SizedBox(height: 20),
          Text(
            'Books',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 20),
          BlocConsumer<AllBooksBloc, AllBooksState>(
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
                p.books != c.books || p.isLoading != c.isLoading,
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
              return Expanded(
                child: GridView.builder(
                  itemCount: state.books.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisExtent: 320,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return BookWidget(
                      onPressed: () {},
                      book: state.books[index],
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
