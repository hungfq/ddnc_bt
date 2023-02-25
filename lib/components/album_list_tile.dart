import 'package:flutter/material.dart';
import 'package:tuan2/models/album_model.dart';
import 'package:tuan2/screens/photo_screen.dart';

class AlbumListTile extends StatefulWidget {
  AlbumListTile(this.data, {Key? key}) : super(key: key);
  Album data;

  @override
  State<AlbumListTile> createState() => _AlbumListTileState();
}

class _AlbumListTileState extends State<AlbumListTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PhotoScreen(
              albumId: widget.data.id.toString(),
            ),
          ),
        );
      },
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(bottom: 20.0),
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(26.0),
        ),
        child: Row(
          children: [
            Flexible(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Album ID:${widget.data.id.toString()}',
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      widget.data.title,
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
