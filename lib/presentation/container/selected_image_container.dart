import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../models/app_state/app_state.dart';
import '../../models/image/image_model.dart';

class SelectedImageContainer extends StatelessWidget {
  const SelectedImageContainer({super.key, required this.builder});

  final ViewModelBuilder<ImageModel?> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, ImageModel?>(
      converter: (Store<AppState> store) {
        return store.state.selectedImage;
      },
      builder: builder,
    );
  }
}
