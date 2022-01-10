import 'dart:ffi';

import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ListviewBuilderScreen extends StatefulWidget {
  const ListviewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListviewBuilderScreen> createState() => _ListviewBuilderScreenState();
}

class _ListviewBuilderScreenState extends State<ListviewBuilderScreen> {
  final List<int> _imagesId = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final scrollController = ScrollController();
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      if ((scrollController.position.pixels + 500) >=
          scrollController.position.maxScrollExtent) {
        fectchData();
      }
    });
  }

  Future fectchData() async {
    if (_isLoading) return;
    _isLoading = true;
    setState(() {});

    await Future.delayed(const Duration(seconds: 3));

    _loadMore();
    _isLoading = false;
    setState(() {});

    if ((scrollController.position.pixels + 100) <=
        scrollController.position.maxScrollExtent) return;

    scrollController.animateTo(
      scrollController.position.pixels + 100,
      duration: const Duration(milliseconds: 300),
      curve: Curves.fastOutSlowIn,
    );
  }

  void _loadMore() {
    final lastImageId = _imagesId.last;
    _imagesId.addAll(
      [1, 2, 3, 4, 5].map((e) => lastImageId + e),
    );
    setState(() {});
  }

  Future<void> onRefresh() async {
    await Future.delayed(const Duration(seconds: 2));
    final lastImageId = _imagesId.last;
    _imagesId.clear();
    _imagesId.add(lastImageId + 1);
    _loadMore();
  }

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return Scaffold(
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: Stack(
          children: [
            RefreshIndicator(
              color: AppTheme.primary,
              onRefresh: () => onRefresh(),
              child: ListView.builder(
                controller: scrollController,
                itemCount: _imagesId.length,
                itemBuilder: (BuildContext context, int index) {
                  return FadeInImage.assetNetwork(
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                    placeholder: 'assets/jar-loading.gif',
                    image:
                        'https://picsum.photos/500/300?image=${_imagesId[index]}',
                  );
                },
              ),
            ),
            if (_isLoading)
              Positioned(
                left: _size.width * 0.5 - 30,
                child: const _LoadingIcon(),
                bottom: 40,
              ),
          ],
        ),
      ),
    );
  }
}

class _LoadingIcon extends StatelessWidget {
  const _LoadingIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 60,
      width: 60,
      child: const CircularProgressIndicator(
        color: AppTheme.primary,
      ),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(30),
      ),
    );
  }
}
