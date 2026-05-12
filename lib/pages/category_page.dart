import 'package:flutter/material.dart';
import 'package:quiz_in_news/pages/news_list_builder_page.dart';
import 'package:quiz_in_news/widgets/app_bar_widget.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key, required this.category});
  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: CustomScrollView(
          slivers: [NewsListBuilderPage(category: category)],
        ),
      ),
    );
  }
}
