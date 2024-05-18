import 'package:flutter/material.dart';
import 'package:examen1_maylincruz/models/books.dart';
import 'package:examen1_maylincruz/services/dataService.dart';
import 'package:examen1_maylincruz/screens/booksDetails.dart';

class BookListScreen extends StatefulWidget {
  @override
  _BookListScreenState createState() => _BookListScreenState();
}

class _BookListScreenState extends State<BookListScreen> {
  late List<Book> books = [];

  @override
  void initState() {
    super.initState();
    _loadBooks();
  }

  Future<void> _loadBooks() async {
    final bookList = await DataService().getBooks();
    setState(() {
      books = bookList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Libros'),
      ),
      body: _buildBookList(),
    );
  }

  Widget _buildBookList() {
    return ListView.builder(
      itemCount: books.length,
      itemBuilder: (context, index) {
        final book = books[index];
        return ListTile(
          title: Text(book.title),
          subtitle: Text('Año: ${book.year.toString()}'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BookDetailsScreen(book: book),
              ),
            );
          },
        );
      },
    );
  }
}
