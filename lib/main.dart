import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:http/http.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

import 'api/auth_api.dart';
import 'api/images_api.dart';
import 'api_key.dart';
import 'epics/app_epics.dart';
import 'firebase_options.dart';
import 'models/app_state/app_state.dart';
import 'presentation/create_user_screen.dart';
import 'presentation/main_screen.dart';
import 'reducer/reducer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final Client client = Client();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  final FirebaseAuth auth = FirebaseAuth.instance;
  final ImagesApi api = ImagesApi(client: client, apiKey: apiKey);
  final AuthApi authApi = AuthApi(auth: auth);
  final AppEpics appEpics = AppEpics(api: api, authApi: authApi);
  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: const AppState(),
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(appEpics.call).call,
    ],
  );

  runApp(
    MyApp(
      store: store,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    required this.store,
  });

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        ),
        home: const MainScreen(),
        routes: <String, WidgetBuilder>{
          CreateUserScreen.route: (BuildContext context) => const CreateUserScreen(),
        },
      ),
    );
  }
}
