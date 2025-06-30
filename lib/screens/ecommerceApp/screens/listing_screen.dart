import 'package:assignment_flutter/screens/ecommerceApp/component/product_list.dart';
import 'package:assignment_flutter/screens/ecommerceApp/component/search_modal.dart';
import 'package:assignment_flutter/screens/ecommerceApp/component/category_list.dart';
import 'package:flutter/material.dart';

class ListingScreen extends StatefulWidget {
  const ListingScreen({super.key});

  @override
  State<ListingScreen> createState() => _ListingScreenState();
}

class _ListingScreenState extends State<ListingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchTab(),
              SizedBox(height: 10),
              CategoryList(),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "You might need",
                    style: TextStyle(
                      color:  Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                    ),
                  ),
                  Text(
                    "See more",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 221, 7, 36),
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
              ProductList()
            ],
          ),
        ),
      ),
    );
  }
}
