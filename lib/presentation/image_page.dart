import 'package:flutter/material.dart';

import '../actions/create_review/create_review.dart';
import '../models/image/image_model.dart';
import '../models/review/review.dart';
import '../models/user/user_model.dart';
import '../util/extensions.dart';
import 'container/client_container.dart';
import 'container/reviews_container.dart';
import 'container/selected_image_container.dart';
import 'container/users_container.dart';

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
          body: UsersContainer(
            builder: (BuildContext context, List<UserModel> users) {
              return ReviewsContainer(
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
                              final UserModel reviewUser =
                                  users.where((UserModel user) => user.uid == review.uid).first;
                              print(reviewUser);
                              return ListTile(
                                leading: CircleAvatar(
                                  radius: 28,
                                  backgroundImage:
                                      reviewUser.pictureUrl != null ? NetworkImage(reviewUser.pictureUrl!) : null,
                                  backgroundColor: Colors.amber,
                                  child: reviewUser.pictureUrl != null
                                      ? null
                                      : Text(
                                          reviewUser.displayName.split('').take(1).join().toUpperCase(),
                                          style: const TextStyle(fontSize: 24, color: Colors.lightBlue),
                                        ),
                                ),
                                title: Text(review.text),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(reviewUser.displayName),
                                    Text(review.createdAt.toString().split('.')[0]),
                                  ],
                                ),
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
              );
            },
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              final TextEditingController _controller = TextEditingController();

              showDialog<void>(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Leave a review'),
                    content: TextField(
                      controller: _controller,
                    ),
                    actions: <Widget>[
                      FilledButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Cancel'),
                      ),
                      FilledButton(
                        onPressed: () {
                          final String text = _controller.text.trim();
                          if (text.isNotEmpty) {
                            context.dispatch(CreateReview(imageId: image!.id, text: text));
                          }
                          Navigator.pop(context);
                        },
                        child: const Text('Save'),
                      ),
                    ],
                  );
                },
              );
            },
            child: const Icon(Icons.add_comment),
          ),
        );
      },
    );
  }
}
