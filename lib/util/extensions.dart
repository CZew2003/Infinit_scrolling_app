import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../models/app_state/app_state.dart';

extension MyExtension on BuildContext {
  void dispatch(dynamic action) {
    StoreProvider.of<AppState>(this, listen: false).dispatch(action);
  }

  AppState get state {
    return StoreProvider.of<AppState>(this).state;
  }

  Store<AppState> get store {
    return StoreProvider.of<AppState>(this, listen: false);
  }
}
