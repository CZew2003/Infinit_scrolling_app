import 'package:flutter/material.dart';

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

  Future<void> fetchData() async {
    //print('page:$page');
    setState(() => isLoading = true);
    final List<ImageClass> newImages = await imageProviderService.fetchData(page);
    images.addAll(newImages);
    page++;
    await Future<void>.delayed(const Duration(seconds: 2));
    setState(() => isLoading = false);
  }

  Future<void> onScroll() async {
    //print('${_controller.offset} / ${_controller.position.maxScrollExtent}');
    if (_controller.offset > _controller.position.maxScrollExtent * 0.9 && !isLoading) {
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
      body: Builder(
        builder: (BuildContext context) {
          return ListView.separated(
            controller: _controller,
            itemCount: isLoading ? images.length + 1 : images.length,
            itemBuilder: (BuildContext context, int index) {
              if (isLoading && index == images.length) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return ImageWidget(imageClass: images[index]);
            },
            separatorBuilder: (BuildContext context, int index) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Divider(
                  thickness: 2,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
