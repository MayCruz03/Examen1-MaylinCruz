import 'package:flutter/material.dart';
import 'package:examen1_maylincruz/screens/bookLists.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Examen - Maylin Cruz'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 212, 158, 158),
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 8,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.book,
                size: 80,
                color: Theme.of(context).primaryColor,
              ),
              SizedBox(height: 20),
              Text(
                '¡Bienvenido, espero encuentres lo que deseas!',
                style: Theme.of(context).textTheme.headline6?.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BookListScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  backgroundColor: Theme.of(context).primaryColor,
                  foregroundColor: Colors.white,
                  textStyle: TextStyle(fontSize: 18),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text('Ver Libros'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
