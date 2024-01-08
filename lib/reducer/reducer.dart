// State + action => State
import 'dart:developer';
import 'package:redux/redux.dart';

import '../actions/list_images/list_images.dart';
import '../models/app_state/app_state.dart';
import '../models/image/image_model.dart';

AppState reducer(AppState state, dynamic action) {
  log('$action');

  return combineReducers<AppState>(
    <Reducer<AppState>>[
      TypedReducer<AppState, ListImagesSuccessful>(_listImagesSuccessful).call,
      TypedReducer<AppState, ListImagesStart>(_listImagesStart).call,
      TypedReducer<AppState, ListImagesError>(_listImagesError).call,
    ],
  )(state, action);
}

AppState _listImagesSuccessful(AppState state, ListImagesSuccessful action) {
  return state.copyWith(
    isLoading: false,
    images: <ImageModel>[...state.images, ...action.images],
    page: state.page + 1,
  );
}

AppState _listImagesStart(AppState state, ListImagesStart action) {
  return state.copyWith(
    page: state.lastColor == action.color && state.lastQuery == action.query ? state.page : 1,
    images: state.lastColor == action.color && state.lastQuery == action.query ? state.images : <ImageModel>[],
    isLoading: true,
    lastColor: action.color,
    lastQuery: action.query,
  );
}

AppState _listImagesError(AppState state, ListImagesError action) {
  return state.copyWith(
    isLoading: false,
  );
}
