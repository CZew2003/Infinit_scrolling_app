import 'package:flutter/material.dart';

import '../../models/image/image_model.dart';
import 'selected_image_container.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({super.key});

  static const String route = 'imagePage';

  @override
  Widget build(BuildContext context) {
    return SelectedImageContainer(
      builder: (BuildContext context, ImageModel? image) {
        return Scaffold(
          appBar: AppBar(
            title: Text(image!.description),
            backgroundColor: Colors.lightBlueAccent,
          ),
        );
      },
    );
  }
}
