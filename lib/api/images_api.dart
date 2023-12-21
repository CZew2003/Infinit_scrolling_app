import 'dart:convert';
import 'package:http/http.dart';

import '../models/image_model.dart';

class ImagesApi {
  ImagesApi({required this.client, required this.apiKey});

  final Client client;
  final String apiKey;

  Future<List<ImageModel>> loadImages(int page) async {
    final Uri uri = Uri(scheme: 'https', host: 'api.unsplash.com', pathSegments: <String>[
      'photos'
    ], queryParameters: <String, String>{
      'client_id': apiKey,
      'page': page.toString(),
      'per_page': '10',
    });

    final Response response = await client.get(uri);

    if (response.statusCode != 200) {
      throw Exception('An error ocurred in fetching data');
    }

    final List<dynamic> body = jsonDecode(response.body) as List<dynamic>;

    return body
        .map(
          (dynamic e) => ImageModel.fromJson(e as Map<String, dynamic>),
        )
        .toList();
  }

  Future<List<ImageModel>> loadSearchImages({
    required int page,
    required String query,
    String? color,
  }) async {
    final Uri uri = Uri(
      scheme: 'https',
      host: 'api.unsplash.com',
      pathSegments: <String>['search', 'photos'],
      queryParameters: <String, String>{
        'client_id': apiKey,
        'page': page.toString(),
        'per_page': '10',
        'query': query,
        if (color != '') 'color': color ?? '',
      },
    );

    final Response response = await client.get(uri);

    if (response.statusCode != 200) {
      throw Exception('An error ocurred in fetching data');
    }

    final Map<String, dynamic> body = jsonDecode(response.body) as Map<String, dynamic>;
    final List<dynamic> results = body['results'] as List<dynamic>;
    return results
        .map(
          (dynamic e) => ImageModel.fromJson(e as Map<String, dynamic>),
        )
        .toList();
  }
}
