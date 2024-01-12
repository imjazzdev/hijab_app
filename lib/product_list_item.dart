import 'package:flutter/material.dart';
import 'package:hijab_app/product_detail_screen.dart';

class ProductListItem extends StatelessWidget {
  final String name;
  final int price;
  final String desc;
  final String image;

  const ProductListItem(
      {super.key,
      required this.name,
      required this.price,
      required this.desc,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: ListTile(
        title: Text(name),
        subtitle: Text('Price: $price'),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ProductDetailScreen(
                      name: name,
                      desc: desc,
                      price: price,
                      image: image,
                      // images: images,
                      imagePath: image,
                    )),
          );
        },
      ),
    );
  }
}
