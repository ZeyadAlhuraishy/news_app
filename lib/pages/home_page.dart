import 'package:flutter/material.dart';
import 'package:quiz_in_news/pages/category_list_page.dart';
import 'package:quiz_in_news/pages/news_list_builder_page.dart';
import 'package:quiz_in_news/widgets/app_bar_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: CategoryListPage(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 32,
              ),
            ),
            NewsListBuilderPage(category: 'general',),
          ],
        ),
      ),
    );
  }
}
