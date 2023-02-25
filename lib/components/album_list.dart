import 'package:flutter/material.dart';
import 'package:tuan2/models/album_model.dart';
import 'package:tuan2/components/album_list_tile.dart';

class AlbumsList extends StatelessWidget {
  const AlbumsList({super.key, required this.albums});

  final List<Album> albums;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: albums.length,
      itemBuilder: (context, index) {
        return Dismissible(
          key: Key(albums[index].toString()),
          child: AlbumListTile(albums[index]),
          background: Container(color: Colors.red),
        );
      },
    );
  }
}
