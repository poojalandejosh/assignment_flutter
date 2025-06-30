import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      // width: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Flexible(
            flex: 5, 
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 199, 213, 224),
                borderRadius: BorderRadius.circular(20),
                ),
              margin: const EdgeInsets.all(5),
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Center(
                child: Text("Category $index")), 
            ),
          );
        },
      ),
    );
  }
}
