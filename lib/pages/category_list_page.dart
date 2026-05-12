import 'package:flutter/material.dart';
import 'package:quiz_in_news/models/category_model.dart';
import 'package:quiz_in_news/widgets/category_card.dart';

class CategoryListPage extends StatelessWidget {
  const CategoryListPage({super.key});
  final List<CategoryModel> categories = const [
    CategoryModel(image: 'assets/business.avif', categoryName: 'Business'),
    CategoryModel(
      image: 'assets/entertaiment.avif',
      categoryName: 'Entertainment',
    ),
    CategoryModel(image: 'assets/general.avif', categoryName: 'General'),
    CategoryModel(image: 'assets/health.avif', categoryName: 'Health'),
    CategoryModel(image: 'assets/science.avif', categoryName: 'Science'),
    CategoryModel(image: 'assets/sports.avif', categoryName: 'Sports'),
    CategoryModel(image: 'assets/technology.jpeg', categoryName: 'Technology'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(categoryModel: categories[index]);
        },
      ),
    );
  }
}
