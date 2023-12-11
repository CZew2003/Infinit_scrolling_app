import 'dart:convert';

import 'package:http/http.dart' as http;
import 'api_key.dart';
import 'image.dart';

class ImageProviderService {
  Future<List<ImageClass>> fetchData(int page) async {
    final Uri uri = Uri(scheme: 'https', host: 'api.unsplash.com', pathSegments: <String>[
      'photos'
    ], queryParameters: <String, String>{
      'client_id': apiKey,
      'page': page.toString(),
      'per_page': '10',
    });

    final http.Response response = await http.get(uri);
    if (response.statusCode != 200) {
      throw Exception('An error ocurred in fetching data');
    }

    final List<dynamic> body = jsonDecode(response.body) as List<dynamic>;
    final List<ImageClass> images =
        body.map((dynamic json) => ImageClass.fromJson(json as Map<String, dynamic>)).toList();
    return images;
  }

  Future<List<ImageClass>> fetchSearchData(int page, String query, String color) async {
    final Uri uri = Uri(
      scheme: 'https',
      host: 'api.unsplash.com',
      pathSegments: <String>['search', 'photos'],
      queryParameters: <String, String>{
        'client_id': apiKey,
        'page': page.toString(),
        'per_page': '10',
        'query': query,
        if (color != '') 'color': color
      },
    );

    final http.Response response = await http.get(uri);
    if (response.statusCode != 200) {
      throw Exception('An error ocurred in fetching data');
    }
    final Map<String, dynamic> body = jsonDecode(response.body) as Map<String, dynamic>;
    final List<dynamic> allImages = body['results'] as List<dynamic>;
    final List<ImageClass> images =
        allImages.map((dynamic json) => ImageClass.fromJson(json as Map<String, dynamic>)).toList();
    return images;
  }
}

enum ColorFilter {
  blackAndWhite,
  black,
  white,
  yellow,
  orange,
  red,
  purple,
  magenta,
  green,
  teal,
  blue,
}
