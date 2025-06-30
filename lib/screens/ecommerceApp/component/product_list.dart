import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Column(
        children: [
          Expanded(
            // 🔐 This gives ListView bounded height
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) =>
                  Card(child: Column(
                    children: [
                     Row(
                      children: [
                        Center(
                          Image.asset(
                            'assets/images/product1.jpg',
                            height: 100,
                            width: 100,
                            fit: BoxFit.cover
                          )
                        )

                      ],
                     )
                      
                      ])),
            ),
          ),
        ],
      ),
    );
  }
}
