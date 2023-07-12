import 'package:bai_3/model/category.dart';
import 'package:flutter/material.dart';


class ListCategoryItem extends StatelessWidget {
  final CategoryModel category;
  const ListCategoryItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8, top: 7),
      child: Container(
        width: 90,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(category.colorBegin),
                  Color(category.colorEnd),
                ]),
            borderRadius: BorderRadius.circular(8)),
        child: Center(
            child: Text(
          category.category,
          style: const TextStyle(
              color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
