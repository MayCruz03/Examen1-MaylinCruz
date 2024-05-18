import 'package:flutter/material.dart';
import 'package:examen1_maylincruz/models/books.dart';

class BookDetailsScreen extends StatelessWidget {
  final Book book;

  BookDetailsScreen({required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles del Libro'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text(
                'Título',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                book.title,
                style: TextStyle(fontSize: 16),
              ),
            ),
            Divider(),
            ListTile(
              title: Text(
                'Año',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                book.year.toString(),
                style: TextStyle(fontSize: 16),
              ),
            ),
            Divider(),
            ListTile(
              title: Text(
                'Editorial',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                book.publisher,
                style: TextStyle(fontSize: 16),
              ),
            ),
            Divider(),
            ListTile(
              title: Text(
                'ISBN',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                book.isbn,
                style: TextStyle(fontSize: 16),
              ),
            ),
            Divider(),
            ListTile(
              title: Text(
                'Páginas',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                book.pages.toString(),
                style: TextStyle(fontSize: 16),
              ),
            ),
            Divider(),
            ListTile(
              title: Text(
                'Notas',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                book.notes.join(", "),
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
