// action in => action out

import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/transformers.dart';
import '../actions/app_action.dart';
import '../actions/create_user/create_user.dart';
import '../actions/list_images/list_images.dart';
import '../api/auth_api.dart';
import '../api/images_api.dart';
import '../models/app_state/app_state.dart';
import '../models/image/image_model.dart';
import '../models/user/user_model.dart';

class AppEpics extends EpicClass<AppState> {
  AppEpics({
    required this.api,
    required this.authApi,
  });

  final ImagesApi api;
  final AuthApi authApi;

  @override
  Stream<dynamic> call(Stream<dynamic> actions, EpicStore<AppState> store) {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, ListImagesStart>(_listImagesStart).call,
      TypedEpic<AppState, CreateUserStart>(_createUserStart).call,
    ])(actions, store);
  }

  Stream<AppAction> _listImagesStart(Stream<ListImagesStart> actions, EpicStore<AppState> store) {
    return actions.debounceTime(const Duration(milliseconds: 500)).switchMap((ListImagesStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) {
            return api.loadImages(
              page: store.state.page,
              color: store.state.color,
              query: store.state.query,
            );
          })
          .map((List<ImageModel> images) => ListImages.successful(images))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => ListImages.error(error, stackTrace));
    });
  }

  Stream<AppAction> _createUserStart(Stream<CreateUserStart> actions, EpicStore<AppState> store) {
    return actions.debounceTime(const Duration(milliseconds: 500)).flatMap((CreateUserStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) {
            return authApi.createUser(email: action.email, password: action.password);
          })
          .map((UserModel client) => CreateUser.successful(client))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => CreateUser.error(error, stackTrace));
    });
  }
}
