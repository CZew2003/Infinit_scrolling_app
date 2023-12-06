import 'dart:convert';

import 'package:http/http.dart' as http;
import 'api_key.dart';
import 'image.dart';

class ImageProviderService {
  Future<List<ImageClass>> fetchData(int page) async {
    Uri uri = Uri(scheme: 'https', host: 'api.unsplash.com', pathSegments: [
      'photos'
    ], queryParameters: {
      'client_id': apiKey,
      'page': page.toString(),
      'per_page': '10',
    });
    final http.Response response = await http.get(uri);
    if (response.statusCode != 200) {
      throw Exception('An error ocurred in fetching data');
    }

    final List<dynamic> body = jsonDecode(response.body) as List<dynamic>;
    final List<ImageClass> images = <ImageClass>[];

    for (final Map<String, dynamic> imageJson in body) {
      images.add(ImageClass.fromJson(imageJson));
    }
    return images;
  }
}
