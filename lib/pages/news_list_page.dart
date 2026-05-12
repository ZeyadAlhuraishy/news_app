import 'package:flutter/material.dart';
import 'package:quiz_in_news/models/article_model.dart';
import 'package:quiz_in_news/widgets/news_card.dart';

class NewsListPage extends StatelessWidget {
  const NewsListPage({super.key, required this.articles});
  final List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: articles.length, (
        context,
        index,
      ) {
        return NewsCard(articleModel: articles[index]);
      }),
    );
  }
}
