// State + action => State
import 'dart:developer';
import 'package:redux/redux.dart';

import '../actions/change_picture/change_picture.dart';
import '../actions/create_review/create_review.dart';
import '../actions/create_user/create_user.dart';
import '../actions/get_curent_user/get_current_user.dart';
import '../actions/get_reviews/get_reviews.dart';
import '../actions/list_images/list_images.dart';
import '../actions/select_image/select_image.dart';
import '../actions/set_color/set_color.dart';
import '../actions/set_query/set_query.dart';
import '../actions/sign_in/sign_in.dart';
import '../actions/sign_out/sign_out.dart';
import '../models/app_state/app_state.dart';
import '../models/image/image_model.dart';
import '../models/review/review.dart';

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
      TypedReducer<AppState, GetCurrentUserSuccessful>(_getCurrentUserSuccessful).call,
      TypedReducer<AppState, SignOutSuccessful>(_signOutSuccessful).call,
      TypedReducer<AppState, SignInSuccessful>(_signInSuccessful).call,
      TypedReducer<AppState, ChangePictureSuccessful>(_createPictureSuccessful).call,
      TypedReducer<AppState, SelectImage>(_selectImage).call,
      TypedReducer<AppState, GetReviewsSuccessful>(_getReviewsSuccessful).call,
      TypedReducer<AppState, CreateReviewSuccessful>(_createReviewSuccessful).call,
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
    user: action.userModel,
  );
}

AppState _getCurrentUserSuccessful(AppState state, GetCurrentUserSuccessful action) {
  return state.copyWith(user: action.user);
}

AppState _signOutSuccessful(AppState state, SignOutSuccessful action) {
  return state.copyWith(user: null);
}

AppState _signInSuccessful(AppState state, SignInSuccessful action) {
  return state.copyWith(user: action.user);
}

AppState _createPictureSuccessful(AppState state, ChangePictureSuccessful action) {
  return state.copyWith(user: action.user);
}

AppState _selectImage(AppState state, SelectImage action) {
  return state.copyWith(selectedImage: action.image);
}

AppState _getReviewsSuccessful(AppState state, GetReviewsSuccessful action) {
  return state.copyWith(reviews: action.reviews);
}

AppState _createReviewSuccessful(AppState state, CreateReviewSuccessful action) {
  return state.copyWith(reviews: <Review>[action.review, ...state.reviews]);
}
