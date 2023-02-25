import 'package:flutter/material.dart';
import 'package:tuan2/models/photo_model.dart';
import 'package:tuan2/components/photo_list_tile.dart';

class PhotoScreen extends StatelessWidget {
  const PhotoScreen({Key? key}) : super(key: key);

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
              "List Photo",
              style: TextStyle(
                fontSize: 26.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children:
              PhotoData.listPhotoData.map((e) => PhotoListTile(e)).toList(),
            ),
            //let's build our caroussel
          ],
        ),
      ),
    ));
  }
}
