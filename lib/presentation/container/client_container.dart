import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../models/app_state/app_state.dart';
import '../../models/client/client_model.dart';

class ClientContainer extends StatelessWidget {
  const ClientContainer({super.key, required this.builder});

  final ViewModelBuilder<ClientModel?> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, ClientModel?>(
      converter: (Store<AppState> store) {
        return store.state.client;
      },
      builder: builder,
    );
  }
}
