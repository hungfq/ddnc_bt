import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';
import 'package:tuan2/models/album_model.dart';
import 'package:tuan2/components/album_list.dart';

class AlbumScreen extends StatelessWidget {
  const AlbumScreen({Key? key}) : super(key: key);

  Future<List<Album>> fetchPhotos(http.Client client) async {
    final response =
        await client.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
    return compute(parsePhotos, response.body);
  }

  List<Album> parsePhotos(String responseBody) {
    final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<Album>((json) => Album.fromJson(json)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder<List<Album>>(
      future: fetchPhotos(http.Client()),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          print(snapshot);
          return const Center(
            child: Text('An error occurred while fetching'),
          );
        } else if (snapshot.hasData) {
          return AlbumsList(albums: snapshot.data!);
          // return snapshot.data.map((e) => PhotoListTile(e)).toList(),
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    ));
  }
}
