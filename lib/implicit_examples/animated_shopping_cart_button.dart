import 'package:flutter/material.dart';

class ShoppingCartButton extends StatefulWidget {
  const ShoppingCartButton({super.key});

  @override
  State<ShoppingCartButton> createState() => _ShoppingCartButtonState();
}

class _ShoppingCartButtonState extends State<ShoppingCartButton> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Shopping Cart'),
        ),
        body: Center(
          child: GestureDetector(
              onTap: () {
                setState(() {
                  isExpanded = !isExpanded;
                });
              },
              child: AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  width: isExpanded ? 200 : 100.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                      color: isExpanded ? Colors.green : Colors.blue,
                      borderRadius:
                          BorderRadius.circular(isExpanded ? 24.0 : 15)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        isExpanded ? Icons.check : Icons.shopping_cart,
                        color: Colors.white,
                      ),
                      if (isExpanded)
                        const Text(
                          'Add To Cart',
                          style: TextStyle(fontSize: 17, color: Colors.white),
                        )
                    ],
                  ))),
        ));
  }
}
