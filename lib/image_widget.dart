import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'models/image_model.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key, required this.imageClass});

  final ImageModel imageClass;

  Future<void> _launchUrl() async {
    final Uri uri = Uri.parse(imageClass.user.links.html);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $uri');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          InkWell(
            onTap: _launchUrl,
            child: Text(
              imageClass.user.links.html,
              style: const TextStyle(
                color: Colors.blue,
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    imageClass.createdAt.split('T')[0],
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        imageClass.likes.toString(),
                        style: const TextStyle(
                          color: Colors.red,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Icon(
                        Icons.favorite,
                        color: Colors.red,
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: SizedBox(height: 200, child: Image.network(imageClass.urls.smallImage)),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            imageClass.description,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.lightBlueAccent,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
