import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../models/app_state/app_state.dart';
import '../../models/review/review.dart';

class ReviewsContainer extends StatelessWidget {
  const ReviewsContainer({super.key, required this.builder});

  final ViewModelBuilder<List<Review>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Review>>(
      converter: (Store<AppState> store) {
        return store.state.reviews;
      },
      builder: builder,
    );
  }
}
