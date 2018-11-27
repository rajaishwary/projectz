import 'package:flutter/material.dart';
import 'package:projectz/model/cart_item.dart';
import 'package:projectz/shopping_item.dart';
import 'package:flutter_redux/flutter_redux.dart';

class ShoppingList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<List<CartItem>, List<CartItem>>(
      converter: (store) => store.state,
      builder: (context, list) => ListView.builder(
        itemBuilder: (context, i) => ShoppingItem(item: list[i]),
        itemCount: list.length,),
    );
  }
}
