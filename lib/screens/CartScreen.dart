import 'package:clicknest/screens/CategoryScreen.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<CartItem> cartItems = [
    CartItem(
      imageUrl: 'images/trial/trial2.jpeg',
      name: 'Item 1',
      description: 'Description for Item 1',
      price: 29.99,
    ),
    // Add more items here
  ];

  void updateQuantity(CartItem item, int change) {
    setState(() {
      item.quantity += change;
      if (item.quantity <= 0) {
        cartItems.remove(item);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Cart'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                return CartItemWidget(
                  cartItem: cartItems[index],
                  onUpdateQuantity: updateQuantity,
                );
              },
            ),
          ),
          SummarySection(cartItems: cartItems),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CategoryPage(),
                      ),
                    );
                  },
                  child: const Text('Continue Shopping'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Proceed to checkout logic
                  },
                  child: const Text('Checkout'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CartItem {
  final String imageUrl;
  final String name;
  final String description;
  final double price;
  int quantity;

  CartItem({
    required this.imageUrl,
    required this.name,
    required this.description,
    required this.price,
    this.quantity = 1,
  });
}

class CartItemWidget extends StatelessWidget {
  final CartItem cartItem;
  final Function(CartItem, int) onUpdateQuantity;

  CartItemWidget({required this.cartItem, required this.onUpdateQuantity});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Image.asset(
              cartItem.imageUrl,
              width: 80,
              height: 80,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(cartItem.name,
                      style:
                      const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Text(cartItem.description),
                  Text('\$${cartItem.price.toStringAsFixed(2)}',
                      style: const TextStyle(fontSize: 16)),
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.remove),
                        onPressed: () {
                          onUpdateQuantity(cartItem, -1);
                        },
                      ),
                      Text(cartItem.quantity.toString()),
                      IconButton(
                        icon: const Icon(Icons.add),
                        onPressed: () {
                          onUpdateQuantity(cartItem, 1);
                        },
                      ),
                      const Spacer(),
                      IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          onUpdateQuantity(cartItem, -cartItem.quantity);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SummarySection extends StatelessWidget {
  final List<CartItem> cartItems;

  SummarySection({required this.cartItems});

  @override
  Widget build(BuildContext context) {
    double subtotal =
    cartItems.fold(0, (sum, item) => sum + item.price * item.quantity);
    double tax = subtotal * 0.1;
    double shipping = 5.99;
    double total = subtotal + tax + shipping;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          SummaryRow(label: 'Subtotal', value: subtotal),
          SummaryRow(label: 'Tax', value: tax),
          SummaryRow(label: 'Shipping', value: shipping),
          const Divider(),
          SummaryRow(label: 'Total', value: total, isTotal: true),
        ],
      ),
    );
  }
}

class SummaryRow extends StatelessWidget {
  final String label;
  final double value;
  final bool isTotal;

  SummaryRow({required this.label, required this.value, this.isTotal = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: isTotal ? FontWeight.bold : FontWeight.normal)),
          Text('\$${value.toStringAsFixed(2)}',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: isTotal ? FontWeight.bold : FontWeight.normal)),
        ],
      ),
    );
  }
}
