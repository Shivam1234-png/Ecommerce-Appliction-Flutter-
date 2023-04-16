
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/core/store.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../models/cart.dart';
import '../../models/catalog.dart';
class AddToCart extends StatefulWidget {
  final Item catalog;
  AddToCart({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart>{
  late MyStore _store;

  @override
  void initState(){
    super.initState();
    _store = VxState.store as MyStore;
    _store.addListener((onStoreUpdated) {
      // Do something when store changes
      setState(() {});
    });
  }
  @override
  void dispose() {
    _store.removeListener((onStoreUpdated) {
      // Do something when store changes
    });
    super.dispose();
  }

  void onStoreUpdated() {
    setState(() {});
  }


  @override
  Widget build(BuildContext context) {
    final CartModel _cart=_store.cart;
    final CatalogModel _catalog=_store.catalog;
    bool isInCart=_cart.items.contains(widget.catalog)??false;
    VxState.watch(context, on: [AddMutation,RemoveMutation]);
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 18, 3, 56)),
        shape: MaterialStateProperty.all(StadiumBorder()),
      ),
      onPressed: (){
        if(!isInCart){
        isInCart=isInCart.toggle();
        _cart.catalog=_catalog;
        AddMutation(widget.catalog);
        // setState(() {});
        }
      },
      child: isInCart?Icon(Icons.done):Icon(CupertinoIcons.cart_badge_plus),
    );
  }
}