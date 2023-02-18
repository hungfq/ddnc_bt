import 'package:flutter/material.dart';
import 'package:tuan2/models/news_model.dart';
import 'package:tuan2/components/news_list_tile.dart';

class BookmarkScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Bookmark",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            //now let's create the cards for the recent news
            Column(
              children:
                  NewsData.bookMarkData.map((e) => NewsListTile(e)).toList(),
            ),
            //now let's create the cards for the recent news
          ],
        ),
      ),
    ));
  }
}
