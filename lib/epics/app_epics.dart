import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/transformers.dart';
import '../actions/list_images/list_images.dart';
import '../actions/list_search_images/list_search_images.dart';
import '../api/images_api.dart';
import '../models/app_state/app_state.dart';
import '../models/image/image_model.dart';

class AppEpics extends EpicClass<AppState> {
  AppEpics({
    required this.api,
  });

  final ImagesApi api;

  @override
  Stream<dynamic> call(Stream<dynamic> actions, EpicStore<AppState> store) {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, ListImagesStart>(_listImagesStart).call,
      TypedEpic<AppState, ListSearchImagesStart>(_listSearchStart).call,
    ])(actions, store);
  }

  Stream<dynamic> _listImagesStart(Stream<ListImagesStart> actions, EpicStore<AppState> store) {
    return actions
        .asyncMap((ListImagesStart action) {
          return api.loadImages(page: action.page);
        })
        .map((List<ImageModel> images) => ListImages.successful(images))
        .onErrorReturnWith((Object error, StackTrace stackTrace) => ListImages.error(error, stackTrace));
  }

  Stream<dynamic> _listSearchStart(Stream<ListSearchImagesStart> actions, EpicStore<AppState> store) {
    return actions
        .asyncMap((ListSearchImagesStart action) {
          return api.loadSearchImages(page: action.page, query: action.query, color: action.color);
        })
        .map((List<ImageModel> images) => ListImages.successful(images))
        .onErrorReturnWith((Object error, StackTrace stackTrace) => ListImages.error(error, stackTrace));
  }
}
