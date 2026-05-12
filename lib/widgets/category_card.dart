import 'package:flutter/material.dart';
import 'package:quiz_in_news/models/category_model.dart';
import 'package:quiz_in_news/pages/category_page.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.categoryModel});
  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryPage(category: categoryModel.categoryName,);
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Container(
          height: 85,
          width: 160,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: AssetImage(categoryModel.image),
              fit: BoxFit.fill,
            ),
          ),
          child: Center(
            child: Text(
              categoryModel.categoryName,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
