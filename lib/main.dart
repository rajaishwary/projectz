import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:projectz/shopping_cart.dart';
import 'package:projectz/model/cart_item.dart';
import 'package:projectz/redux/reducers.dart';

void main() {
  final store = Store<List<CartItem>>(
    cartItemsReducer, initialState: List()
  );
  runApp(new App(store: store));
}

class App extends StatelessWidget {
  final Store<List<CartItem>> store;

  const App({ Key key, this.store }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: ShoppingCart(store: store),
      ),
    );
  }
}
