import 'package:flutter/material.dart';
import 'package:hijab_app/checkout_screen.dart';
import 'package:hijab_app/config/variable.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),
        backgroundColor: Variable.primarySwatch,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/logo.png'), // Change to AssetImage
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Variable.cartItems.isNotEmpty
              ? ListView.builder(
                  itemCount: Variable.cartItems.length,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Variable.primaryColor,
                      child: ListTile(
                        title: Text(
                          Variable.cartItems[index].name,
                          style: TextStyle(
                            fontSize: 18,
                            color: Variable.whiteColor,
                          ),
                        ),
                        subtitle: Text(
                          'Price: Rp. ${Variable.cartItems[index].price}',
                          style: TextStyle(
                            fontSize: 16,
                            color: Variable.whiteColor,
                          ),
                        ),
                      ),
                    );
                  },
                )
              : Center(
                  child: Text(
                    'Your cart is empty.',
                    style: TextStyle(
                      fontSize: 18,
                      color: Variable.whiteColor,
                    ),
                  ),
                ),
        ),
      ),
      floatingActionButton: Variable.cartItems.isNotEmpty
          ? FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CheckoutPage(),
                  ),
                );
              },
              backgroundColor: Variable.primarySwatch,
              child: const Icon(Icons.payment),
            )
          : null,
    );
  }
}
