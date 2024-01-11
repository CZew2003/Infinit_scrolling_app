import 'dart:developer';

import 'package:flutter/material.dart';

import '../actions/list_images/list_images.dart';
import '../actions/set_color/set_color.dart';
import '../actions/set_query/set_query.dart';
import '../models/app_state/app_state.dart';
import '../models/image/image_model.dart';
import '../models/user/user_model.dart';
import '../util/extensions.dart';
import 'container/client_container.dart';
import 'container/images_container.dart';
import 'container/is_loading_container.dart';
import 'create_user_screen.dart';
import 'filter_widget.dart';
import 'image_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final ScrollController _controller = ScrollController();
  final TextEditingController _controller1 = TextEditingController();
  String color = '';

  Future<void> onScroll() async {
    if (_controller.offset > _controller.position.maxScrollExtent - MediaQuery.sizeOf(context).height * 2 &&
        !context.state.isLoading) {
      context.dispatch(const ListImages());
    }
  }

  @override
  void initState() {
    super.initState();
    _controller.addListener(onScroll);
    context.dispatch(const ListImages());
  }

  @override
  Widget build(BuildContext context) {
    return ImagesContainer(
      builder: (BuildContext context, List<ImageModel> images) {
        return IsLoadingContainer(
          builder: (BuildContext context, bool isLoading) {
            return ClientContainer(
              builder: (BuildContext context, UserModel? client) {
                return RefreshIndicator(
                  onRefresh: () async {
                    _controller1.clear();
                    color = '';
                    context
                      ..dispatch(const SetQuery(''))
                      ..dispatch(const SetColor(''))
                      ..dispatch(const ListImages());

                    await context.store.onChange.firstWhere((AppState state) => !state.isLoading);
                  },
                  child: Scaffold(
                    appBar: AppBar(
                      backgroundColor: Colors.lightBlueAccent,
                      title: const Text('Images'),
                      centerTitle: true,
                    ),
                    body: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 8, bottom: 8, right: 8),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: TextField(
                                  onChanged: (String value) {
                                    context
                                      ..dispatch(SetQuery(value))
                                      ..dispatch(const ListImages());
                                  },
                                  controller: _controller1,
                                  textAlign: TextAlign.center,
                                  decoration: const InputDecoration(
                                    hintText: 'Search an image',
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.blue, width: 2),
                                    ),
                                  ),
                                ),
                              ),
                              FilterWidget(
                                isSelected: (String item) => color == item,
                                onSelect: (bool selected, String item) {
                                  if (selected) {
                                    color = item;
                                    context
                                      ..dispatch(SetColor(color))
                                      ..dispatch(const ListImages());
                                  } else {
                                    color = '';
                                    context
                                      ..dispatch(SetColor(color))
                                      ..dispatch(const ListImages());
                                  }
                                },
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: CustomScrollView(
                            controller: _controller,
                            slivers: <Widget>[
                              SliverList(
                                delegate: SliverChildBuilderDelegate(
                                  childCount: images.length,
                                  (BuildContext context, int index) {
                                    return GestureDetector(
                                      onTap: () {
                                        if (client == null) {
                                          Navigator.pushNamed(context, CreateUserScreen.route);
                                        } else {
                                          log('creator is: $client and image is ${images[index]}');
                                        }
                                      },
                                      child: Column(
                                        children: <Widget>[
                                          ImageWidget(imageClass: images[index]),
                                          const Padding(
                                            padding: EdgeInsets.symmetric(horizontal: 10),
                                            child: Divider(
                                              thickness: 2,
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                              if (images.isEmpty && !isLoading)
                                SliverToBoxAdapter(
                                  child: Center(
                                    child: Text(
                                      'No result found for ${_controller1.text}',
                                      style: const TextStyle(
                                        color: Colors.lightBlueAccent,
                                        fontSize: 24,
                                      ),
                                    ),
                                  ),
                                ),
                              if (isLoading)
                                const SliverToBoxAdapter(
                                  child: Center(
                                    child: CircularProgressIndicator(),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
