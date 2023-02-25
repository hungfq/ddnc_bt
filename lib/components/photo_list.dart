import 'package:flutter/material.dart';
import 'package:tuan2/models/photo_model.dart';
import 'package:tuan2/components/photo_list_tile.dart';

class PhotosList extends StatelessWidget {
  const PhotosList({super.key, required this.photos});

  final List<Photo> photos;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: photos.length,
      itemBuilder: (context, index) {
        return Dismissible(
          key: Key(photos[index].toString()),
          background: Container(color: Colors.red),
          child: PhotoListTile(photos[index]),
        );
      },
    );
  }
}