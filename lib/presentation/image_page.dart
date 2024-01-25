import 'package:flutter/material.dart';

import '../models/image/image_model.dart';
import '../models/review/review.dart';
import 'container/reviews_container.dart';
import 'container/selected_image_container.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({super.key});

  static const String route = 'imagePage';

  @override
  Widget build(BuildContext context) {
    return SelectedImageContainer(
      builder: (BuildContext context, ImageModel? image) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Add review'),
            backgroundColor: Colors.lightBlueAccent,
            centerTitle: true,
          ),
          body: ReviewsContainer(
            builder: (BuildContext context, List<Review> reviews) {
              return CustomScrollView(
                slivers: <Widget>[
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 200,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(image!.urls.smallImage),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            image.description,
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontSize: 20),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                image.likes.toString(),
                                style: const TextStyle(
                                  color: Colors.red,
                                  fontSize: 20,
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
                          const Divider(),
                        ],
                      ),
                    ),
                  ),
                  if (reviews.isNotEmpty)
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                          final Review review = reviews[index];

                          return ListTile(
                            title: Text(review.text),
                          );
                        },
                        childCount: reviews.length,
                      ),
                    )
                  else
                    const SliverFillRemaining(
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          'Be the first to leave a review',
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                    )
                ],
              );
            },
          ),
        );
      },
    );
  }
}
