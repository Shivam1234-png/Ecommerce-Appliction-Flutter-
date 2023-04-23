// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catalog/core/store.dart';
import 'package:flutter_catalog/models/cart.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_catalog/widgets/themes.dart';

import '../models/catalog.dart';
import '../widgets/home_widgets/catalog_header.dart';
import '../widgets/home_widgets/catalog_list.dart';
class FashionPage extends StatefulWidget {
  @override
  State<FashionPage> createState() => _FashionPageState();
}

class _FashionPageState extends State<FashionPage>{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }
  loadData() async{
    await Future.delayed(Duration(seconds: 2));
    final catalogJson=await rootBundle.loadString("assets/files/catalogfash.json");
    final decodedData=jsonDecode(catalogJson);
    var productsData=decodedData["products_fashion"];
    CatalogModel.items=List.from(productsData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    final _cart=(VxState.store as MyStore).cart;
    return Scaffold(
      backgroundColor: context.canvasColor,
      floatingActionButton: VxBuilder(
        mutations: {AddMutation,RemoveMutation},
        builder: (context,cart,_)=>FloatingActionButton(onPressed:() => Navigator.pushNamed(context, MyRoutes.cartRoute),
        backgroundColor: Color.fromARGB(255, 18, 3, 56),
        child: Icon(CupertinoIcons.cart,color: Colors.white,),
        ).badge(color: Vx.red500,size:20,count: _cart.items.length,textStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
      ),
        body: SafeArea(
          child: Container(
            padding: Vx.m32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CatalogHeader(),
                if(CatalogModel.items!=null && CatalogModel.items.isNotEmpty)
                  CatalogList().py(16).expand()
                else
                  CircularProgressIndicator().centered().py16().expand()
              ],
            )
          )
        )
      );
  }
}




