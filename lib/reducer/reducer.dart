// State + action => State
import 'dart:developer';
import 'package:redux/redux.dart';

import '../actions/create_user/create_user.dart';
import '../actions/list_images/list_images.dart';
import '../actions/set_color/set_color.dart';
import '../actions/set_query/set_query.dart';
import '../models/app_state/app_state.dart';
import '../models/image/image_model.dart';

AppState reducer(AppState state, dynamic action) {
  log('$action');

  return combineReducers<AppState>(
    <Reducer<AppState>>[
      TypedReducer<AppState, ListImagesSuccessful>(_listImagesSuccessful).call,
      TypedReducer<AppState, ListImagesStart>(_listImagesStart).call,
      TypedReducer<AppState, ListImagesError>(_listImagesError).call,
      TypedReducer<AppState, SetColor>(_setColor).call,
      TypedReducer<AppState, SetQuery>(_setQuery).call,
      TypedReducer<AppState, CreateUserSuccessful>(_createUserSuccessful).call,
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
    isLoading: true,
  );
}

AppState _listImagesError(AppState state, ListImagesError action) {
  return state.copyWith(
    isLoading: false,
  );
}

AppState _setColor(AppState state, SetColor action) {
  return state.copyWith(
    color: action.color,
    images: <ImageModel>[],
    page: 1,
  );
}

AppState _setQuery(AppState state, SetQuery action) {
  return state.copyWith(
    query: action.query,
    images: <ImageModel>[],
    page: 1,
  );
}

AppState _createUserSuccessful(AppState state, CreateUserSuccessful action) {
  return state.copyWith(
    client: action.client,
  );
}
