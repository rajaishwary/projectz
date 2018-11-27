import 'package:flutter/material.dart';
import 'package:projectz/model/cart_item.dart';
import 'package:projectz/shopping_list.dart';
import 'package:projectz/add_item_dialog.dart';
import 'package:redux/redux.dart';

class ShoppingCart extends StatelessWidget {
  final Store<List<CartItem>> store;

  const ShoppingCart({ Key key, this.store }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Shopping Cart"),
      ),
      body: ShoppingList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _openAddItemDialog(context),
        child: Icon(Icons.add),
      ),
    );
  }
}

_openAddItemDialog(BuildContext context) {
  showDialog(context: context, builder: (context) => AddItemDialog());
}