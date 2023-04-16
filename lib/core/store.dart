// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_catalog/models/cart.dart';
import 'package:flutter_catalog/models/catalog.dart';

class MyStore extends VxStore {
  late CatalogModel catalog;
  late CartModel cart;
  MyStore(){
    catalog=CatalogModel();
    cart=CartModel();
    cart.catalog=catalog;
  }

  void addListener(Null Function(dynamic onStoreUpdated) param0) {}

  void removeListener(Null Function(dynamic onStoreUpdated) param0) {}
}
