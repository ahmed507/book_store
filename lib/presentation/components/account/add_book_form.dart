import 'package:book_shop/domain/book/book_model.dart';
import 'package:book_shop/domain/core/i_fire_store_service.dart';
import 'package:book_shop/injection.dart';
import 'package:flutter/material.dart';

class AddBookForm extends StatefulWidget {
  const AddBookForm({Key? key}) : super(key: key);

  @override
  State<AddBookForm> createState() => _AddBookFormState();
}

class _AddBookFormState extends State<AddBookForm> {
  final TextEditingController titleController = TextEditingController();

  final TextEditingController authorController = TextEditingController();

  final TextEditingController descriptionController = TextEditingController();

  final TextEditingController isbnController = TextEditingController();

  final TextEditingController publishedController = TextEditingController();

  final TextEditingController pagesController = TextEditingController();

  final TextEditingController languageController = TextEditingController();

  final TextEditingController linkController = TextEditingController();

  final TextEditingController priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            controller: titleController,
            decoration: const InputDecoration(
              labelText: 'Title',
            ),
          ),
          const SizedBox(height: 8),
          TextFormField(
            controller: authorController,
            decoration: const InputDecoration(
              labelText: 'Author',
            ),
          ),
          const SizedBox(height: 8),
          TextFormField(
            controller: descriptionController,
            decoration: const InputDecoration(
              labelText: 'Description',
            ),
          ),
          const SizedBox(height: 8),
          TextFormField(
            controller: publishedController,
            decoration: const InputDecoration(
              labelText: 'Published',
            ),
          ),
          const SizedBox(height: 8),
          TextFormField(
            controller: linkController,
            decoration: const InputDecoration(
              labelText: 'Link',
            ),
          ),
          const SizedBox(height: 8),
          TextFormField(
            controller: priceController,
            decoration: const InputDecoration(
              labelText: 'Price',
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () async {
              await getIt<IFireStoreService>()
                  .createBook(
                    BookModel(
                      title: titleController.text,
                      publishedAt: publishedController.text,
                      author: authorController.text,
                      description: descriptionController.text,
                      imageLink: linkController.text,
                      price: double.parse(priceController.text),
                    ),
                  )
                  .then((value) => ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Book added successfully'),
                        ),
                      ));
            },
            child: const Text('Add Book'),
          ),
        ],
      ),
    );
  }
}
