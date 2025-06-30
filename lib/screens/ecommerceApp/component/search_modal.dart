import 'package:flutter/material.dart';

class SearchTab extends StatelessWidget {
  const SearchTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // 🔹 Search field with flexible width
        Expanded(
          child: SizedBox(
            height: 35,
            child: TextField(
              decoration: const InputDecoration(
                labelText: 'Search',
                isDense: true,
                contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 223, 221, 221),
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 12),
        // 🔹 Cart Icon
        Container(
          width: 40,
          height: 40,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 244, 242, 242),
            shape: BoxShape.circle,
          ),
          child: IconButton(
            icon: const Icon(Icons.shopping_cart_sharp, color: Colors.black),
            onPressed: () {
              // TODO: Cart action
            },
          ),
        ),
      ],
    );
  }
}
