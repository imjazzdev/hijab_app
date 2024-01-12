import 'package:flutter/material.dart';
import 'package:hijab_app/config/variable.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkout'),
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Order Summary',
                style: TextStyle(
                  fontSize: 24,
                  color: Variable.whiteColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: ListView.builder(
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
                          'Price: ${Variable.cartItems[index].price}',
                          style: TextStyle(
                            fontSize: 16,
                            color: Variable.whiteColor,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  _showCheckoutSuccessSnackbar(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Variable.primarySwatch,
                  foregroundColor: Variable.whiteColor,
                ),
                child: const Text('Place Order'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showCheckoutSuccessSnackbar(BuildContext context) {
    // Show a snackbar indicating that the checkout was successful
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Order placed successfully!'),
        duration: Duration(seconds: 2),
      ),
    );

    // Clear the cart after successful checkout
    Variable.cartItems.clear();

    // You can navigate to another screen or perform additional actions after successful checkout
  }
}
