import 'package:flutter/material.dart';
import 'package:hijab_app/product_list_item.dart';
import 'package:hijab_app/config/variable.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
      ),
      backgroundColor: Variable.whiteColor,
      body: Stack(
        children: [
          Image.asset(
            'images/logo.png',
            height: double.maxFinite,
            width: double.maxFinite,
            fit: BoxFit.cover,
          ),
          ListView(
            children: [
              ProductListItem(
                name: 'Paris Premium',
                price: 20000,
                desc:
                    'Tersedia banyak warna, cocok digunakan pada saat bepergian santai ataupun formal',
                image: 'images/parispre.jpg',
              ),
              ProductListItem(
                name: 'Paris Redrose',
                price: 20000,
                desc:
                    'Tersedia banyak warna, cocok digunakan pada saat bepergian santai ataupun formal',
                image: 'images/parisred.jpg',
              ),
              ProductListItem(
                name: 'Pashmina Silk',
                price: 55000,
                desc:
                    'Tersedia banyak warna, cocok digunakan pada saat bepergian santai ataupun formal',
                image: 'images/pashminasilk.jpg',
              ),
              ProductListItem(
                name: 'Pashmina Kaos',
                price: 50000,
                desc:
                    'Tersedia banyak warna, cocok digunakan pada saat bepergian santai ataupun formal',
                image: 'images/pashminakaos.jpg',
              ),
              ProductListItem(
                name: 'Hijab Sporty',
                price: 35000,
                desc: 'Hijab santai yang cocok dipakai untuk berolahraga',
                image: 'images/hijabsporty.jpg',
              ),
              ProductListItem(
                name: 'Scrunchie',
                price: 10000,
                desc: 'Ikat rambut',
                image: 'images/scrunchie.jpg',
              ),
              ProductListItem(
                name: 'Jarum',
                price: 5000,
                desc: 'Kelengkapan hijab',
                image: 'images/jarum.jpg',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
