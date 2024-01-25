import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:http/http.dart';

import '../models/image/image_model.dart';
import '../models/review/review.dart';

class ImagesApi {
  ImagesApi({required this.client, required this.apiKey, required this.firestore});

  final Client client;
  final String apiKey;
  final FirebaseFirestore firestore;

  Future<List<ImageModel>> loadImages({
    required int page,
    required String query,
    required String color,
  }) async {
    if (query.isEmpty) {
      return loadDefaultImages(page: page);
    } else {
      return loadSearchImages(page: page, query: query, color: color);
    }
  }

  Future<List<ImageModel>> loadDefaultImages({
    required int page,
  }) async {
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
    required String color,
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
        if (color != '') 'color': color,
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

  Future<List<Review>> getReviews(String imageId) async {
    final QuerySnapshot<Map<String, dynamic>> snapshot =
        await firestore.collection('movies/$imageId/reviews').orderBy('createdAt', descending: true).get();
    return snapshot.docs.map((QueryDocumentSnapshot<Map<String, dynamic>> doc) => Review.fromJson(doc.data())).toList();
  }

  Future<Review> createReview({
    required String imageId,
    required String text,
    required String uid,
  }) async {
    final ref = firestore.collection('movies/$imageId/reviews').doc();

    final Review review = Review(id: imageId, text: text, uid: uid, createdAt: DateTime.now());

    ref.set(review.toJson());

    return review;
  }
}
