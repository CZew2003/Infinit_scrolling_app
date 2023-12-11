import 'package:flutter/material.dart';

import 'filter_widget.dart';
import 'image.dart';
import 'image_provider.dart';
import 'image_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<ImageClass> images = <ImageClass>[];
  bool isLoading = true;
  ImageProviderService imageProviderService = ImageProviderService();
  int page = 1;
  final ScrollController _controller = ScrollController();
  final TextEditingController _controller1 = TextEditingController();
  String lastSearch = '';
  String lastColor = '';
  String colorSelected = '';

  Future<void> fetchData() async {
    final String value = _controller1.text;
    if (value != lastSearch || lastColor != colorSelected) {
      page = 1;
      images.clear();
    }
    setState(() => isLoading = true);

    late List<ImageClass> newImages;
    if (value == '') {
      newImages = await imageProviderService.fetchData(page);
    } else {
      newImages = await imageProviderService.fetchSearchData(page, value, colorSelected);
    }

    if (value != lastSearch || lastColor != colorSelected) {
      images.clear();
    }
    images.addAll(newImages);
    lastSearch = value;
    lastColor = colorSelected;
    page++;
    await Future<void>.delayed(const Duration(seconds: 1));
    setState(() => isLoading = false);
  }

  Future<void> onScroll() async {
    //print('${_controller.offset} / ${_controller.position.maxScrollExtent}');
    if (_controller.offset > _controller.position.maxScrollExtent - MediaQuery.sizeOf(context).height * 2 &&
        !isLoading) {
      await fetchData();
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData();
    _controller.addListener(onScroll);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      fetchData();
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
                  isSelected: (String item) => colorSelected == item,
                  onSelect: (bool selected, String item) {
                    if (selected) {
                      colorSelected = item;
                      fetchData();
                    } else {
                      colorSelected = '';
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
                      return Column(
                        children: <Widget>[
                          ImageWidget(imageClass: images[index]),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Divider(
                              thickness: 2,
                            ),
                          ),
                        ],
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
    );
  }
}
