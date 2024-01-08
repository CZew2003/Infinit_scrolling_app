import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../models/app_state/app_state.dart';
import '../../models/image/image_model.dart';

class ImagesContainer extends StatelessWidget {
  const ImagesContainer({super.key, required this.builder});

  final ViewModelBuilder<List<ImageModel>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<ImageModel>>(
      converter: (Store<AppState> store) {
        return store.state.images;
      },
      builder: builder,
    );
  }
}
