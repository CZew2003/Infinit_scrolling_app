// action in => action out

import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/transformers.dart';
import '../actions/app_action.dart';
import '../actions/change_picture/change_picture.dart';
import '../actions/create_review/create_review.dart';
import '../actions/create_user/create_user.dart';
import '../actions/get_curent_user/get_current_user.dart';
import '../actions/get_reviews/get_reviews.dart';
import '../actions/get_users/get_users.dart';
import '../actions/list_images/list_images.dart';
import '../actions/set_user_data/set_user_data.dart';
import '../actions/sign_in/sign_in.dart';
import '../actions/sign_out/sign_out.dart';
import '../api/auth_api.dart';
import '../api/images_api.dart';
import '../models/app_state/app_state.dart';
import '../models/image/image_model.dart';
import '../models/review/review.dart';
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
      TypedEpic<AppState, GetCurrentUserStart>(_getCurrentUserStart).call,
      TypedEpic<AppState, SignOutStart>(_signOutStart).call,
      TypedEpic<AppState, SignInStart>(_signInStart).call,
      TypedEpic<AppState, ChangePictureStart>(_changePictureStart).call,
      TypedEpic<AppState, GetReviewsStart>(_getReviewsStart).call,
      TypedEpic<AppState, CreateReviewStart>(_createReviewStart).call,
      TypedEpic<AppState, GetUsersStart>(_getUsersStart).call,
      TypedEpic<AppState, SetUserDataStart>(_setUserDataStart).call,
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
    return actions.flatMap((CreateUserStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) {
            return authApi.createUser(email: action.email, password: action.password);
          })
          .expand((UserModel client) {
            return <AppAction>[
              CreateUser.successful(client),
              SetUserDataStart(client),
            ];
          })
          .onErrorReturnWith((Object error, StackTrace stackTrace) => CreateUser.error(error, stackTrace))
          .doOnData(action.result);
    });
  }

  Stream<AppAction> _getCurrentUserStart(Stream<GetCurrentUserStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetCurrentUserStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) {
            return authApi.getCurrentUser();
          })
          .map((UserModel? user) => GetCurrentUser.successful(user))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => GetCurrentUser.error(error, stackTrace));
    });
  }

  Stream<AppAction> _signOutStart(Stream<SignOutStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((SignOutStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) {
            return authApi.signOut();
          })
          .map((_) => const SignOut.successful())
          .onErrorReturnWith((Object error, StackTrace stackTrace) => SignOut.error(error, stackTrace));
    });
  }

  Stream<AppAction> _signInStart(Stream<SignInStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((SignInStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) {
            return authApi.signIn(email: action.email, password: action.password);
          })
          .map((UserModel? user) => SignIn.successful(user))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => SignIn.error(error, stackTrace))
          .doOnData(action.result);
    });
  }

  Stream<AppAction> _changePictureStart(Stream<ChangePictureStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((ChangePictureStart action) {
      return Stream<void>.value(null).asyncMap((_) {
        return authApi.changeProfilePicture(uid: action.uid, path: action.path);
      }).expand((UserModel? user) {
        return <AppAction>[
          ChangePicture.successful(user),
          SetUserDataStart(user!),
        ];
      }).onErrorReturnWith((Object error, StackTrace stackTrace) => ChangePicture.error(error, stackTrace));
    });
  }

  Stream<AppAction> _getReviewsStart(Stream<GetReviewsStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetReviewsStart action) {
      return Stream<void>.value(null).asyncMap((_) {
        return api.getReviews(action.imageId);
      }).expand((List<Review> reviews) {
        final List<String> uids = reviews.map((Review review) => review.uid).toSet().toList();
        return <AppAction>[
          if (uids.isNotEmpty) GetUsersStart(uids),
          GetReviews.successful(reviews),
        ];
      }).onErrorReturnWith((Object error, StackTrace stackTrace) => GetReviews.error(error, stackTrace));
    });
  }

  Stream<AppAction> _createReviewStart(Stream<CreateReviewStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((CreateReviewStart action) {
      return Stream<void>.value(null).asyncMap((_) {
        return api.createReview(imageId: action.imageId, text: action.text, uid: store.state.user!.uid);
      }).expand((Review review) {
        return <AppAction>[
          CreateReview.successful(review),
          GetUsersStart(List<String>.of(<String>[review.uid])),
        ];
      }).onErrorReturnWith((Object error, StackTrace stackTrace) => CreateReview.error(error, stackTrace));
    });
  }

  Stream<AppAction> _getUsersStart(Stream<GetUsersStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetUsersStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) {
            return api.getUsers(action.uids);
          })
          .map((List<UserModel> users) => GetUsers.successful(users))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => GetUsers.error(error, stackTrace));
    });
  }

  Stream<AppAction> _setUserDataStart(Stream<SetUserDataStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((SetUserDataStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) {
            return api.setUserData(action.user);
          })
          .map((_) => const SetUserData.successful())
          .onErrorReturnWith((Object error, StackTrace stackTrace) => SetUserData.error(error, stackTrace));
    });
  }
}
