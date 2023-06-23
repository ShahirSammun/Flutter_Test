import 'package:flutter/material.dart';

void main() {
  runApp(ShoppingListApp());
}

class ShoppingListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ShoppingListScreen(),
    );
  }
}

class ShoppingListScreen extends StatelessWidget {
  const ShoppingListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Shopping List'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              _showSnackBar(context, 'Cart is empty');
            },
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
        children: [
          _buildShoppingItem(Icons.shopping_basket, 'Milk'),
          _buildShoppingItem(Icons.shopping_basket, 'Bread'),
          _buildShoppingItem(Icons.shopping_basket, 'Eggs'),
          _buildShoppingItem(Icons.shopping_basket, 'Apples'),
          _buildShoppingItem(Icons.shopping_basket, 'Bananas'),

        ],
      ),
    );
  }

  Widget _buildShoppingItem(IconData icon, String name) {
    return ListTile(
      leading: Icon(icon),
      title: Text(name),
    );
  }

  void _showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }
}
