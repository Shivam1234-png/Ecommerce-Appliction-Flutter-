import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              "Catalog App".text.xl5.bold.color(Color.fromARGB(255, 31, 2, 99)).make(),
              "Trending Products".text.xl2.make(),
            ],
            );
  }
}