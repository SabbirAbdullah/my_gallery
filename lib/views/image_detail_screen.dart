import 'package:flutter/material.dart';
import '../models/image_model.dart';

class ImageDetailScreen extends StatelessWidget {
  final ImageModel image;

  const ImageDetailScreen({required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(image.label,style: TextStyle(fontFamily: 'DancingScript'),),),
      body: Stack(
        children: [
          Align(alignment: AlignmentDirectional.center,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Image.network(image.url),
              )),

        ]
      ),
    );
  }
}
