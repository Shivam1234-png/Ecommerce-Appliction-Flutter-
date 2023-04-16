import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/cart.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import '../core/store.dart';
class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Center(child: Text("Cart").text.make(),),
      ),
      body: Column(children: [
        _CartList().p(32).expand(),
        Divider(),
        _CartTotal(),
      ]),
    );
  }
}
class _CartTotal extends StatelessWidget {
  const _CartTotal({super.key});
  @override
  Widget build(BuildContext context) {
    final CartModel _cart=(VxState.store as MyStore).cart;
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          VxBuilder(
            mutations: {RemoveMutation},
            builder: (context,cart,_){
                return "\$${_cart?.totalPrice}".text.xl5.color(Color.fromARGB(255, 18, 3, 56)).make();
            },
            ),
          30.widthBox,
          ElevatedButton(
            onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: "Buying facility will start soon!".text.make()));
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 18, 3, 56))
            ),
            child: "Buy".text.white.make(),
          ).w32(context)
      ],)
    );
  }
}
class _CartList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [RemoveMutation]);
    final CartModel _cart=(VxState.store as MyStore).cart;
    return _cart.items.isEmpty? "Nothing to Show".text.xl3.makeCentered(): ListView.builder(
      itemCount: _cart.items?.length,
      itemBuilder: (context,index)=>ListTile(
        leading: Icon(Icons.done),
        trailing: IconButton(
          icon: Icon(Icons.remove_circle_outline),
          onPressed: () {
            RemoveMutation(_cart.items[index]);
            // setState(() {});
          },
        ),
        title: _cart.items[index].name.text.make(),
      ),
    );
  }
}