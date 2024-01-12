import 'package:flutter/material.dart';
import 'package:hijab_app/cart_screen.dart';
import 'package:hijab_app/config/variable.dart';
import 'package:hijab_app/model/cart_item.dart';

class ProductDetailScreen extends StatelessWidget {
  final String name;
  final int price;
  final String desc;
  final String image;

  const ProductDetailScreen({
    Key? key,
    required this.name,
    required this.price,
    required this.desc,
    required this.image,
    // required Type images,
    required String imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Detail'),
        backgroundColor: Variable.primarySwatch,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/logo.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Variable.primarySwatch,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      image,
                      width: 400,
                    ),
                  ),
                  const SizedBox(height: 40),
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 24,
                      color: Variable.whiteColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Price: $price',
                    style: TextStyle(fontSize: 16, color: Variable.whiteColor),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    desc,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Variable.whiteColor),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      Variable.cartItems
                          .add(CartItem(name: name, price: price));
                      _showSnackbar(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Variable.primaryColor,
                      foregroundColor: Variable.whiteColor,
                    ),
                    child: const Text('Add to Cart'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _showSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$name added to cart'),
        duration: const Duration(seconds: 2),
        action: SnackBarAction(
          label: 'View Cart',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CartPage()),
            );
          },
        ),
      ),
    );
  }
}
