import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/book_page.dart';
import 'package:flutter_catalog/pages/faishon_page.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/vegetables_page.dart';

class InitialHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
            child: Card(
              child: ListTile(
                leading: Icon(Icons.devices),
                title: Text('Electronics'),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => VegetablesPage()),
              );
            },
            child: Card(
              child: ListTile(
                leading: Icon(Icons.local_florist),
                title: Text('Vegetables'),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FashionPage()),
              );
            },
            child: Card(
              child: ListTile(
                leading: Icon(Icons.shopping_basket),
                title: Text('Fashion'),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BooksPage()),
              );
            },
            child: Card(
              child: ListTile(
                leading: Icon(Icons.book),
                title: Text('Books'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}







