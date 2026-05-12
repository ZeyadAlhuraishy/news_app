import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:quiz_in_news/models/article_model.dart';
import 'package:quiz_in_news/pages/news_list_page.dart';
import 'package:quiz_in_news/services/news_service.dart';
import 'package:quiz_in_news/tools/error_message.dart';
import 'package:quiz_in_news/tools/waiting_circle.dart';

class NewsListBuilderPage extends StatefulWidget {
  const NewsListBuilderPage({super.key, required this.category});
  final String category;

  @override
  State<NewsListBuilderPage> createState() => _NewsListBuilderPageState();
}

class _NewsListBuilderPageState extends State<NewsListBuilderPage> {
  var future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = NewsService(Dio()).getNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListPage(articles: snapshot.data!);
        } else if (snapshot.hasError) {
          return SliverToBoxAdapter(child: ErrorMessage());
        } else {
          return SliverToBoxAdapter(child: WaitingCircle());
        }
      },
    );
  }
}
