import 'package:flutter/material.dart';
import 'package:memem/widgets/MemeImage.dart';
import 'package:preload_page_view/preload_page_view.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key key}) : super(key: key);

  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage>
    with AutomaticKeepAliveClientMixin<FeedPage> {
  final _pageController = PreloadPageController(initialPage: 0);

  List<String> images;

  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    images = [
      "https://i.redd.it/9q7r48kd2dh21.jpg",
      "https://i.redd.it/9q7r48kd2dh21.jpg",
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: PreloadPageView.builder(
        controller: _pageController,
        scrollDirection: Axis.vertical,
        onPageChanged: (page) {
          setState(() {
            images.add("https://i.redd.it/9q7r48kd2dh21.jpg");
          });
        },
        itemBuilder: (c, id) => MemeImage(image: images[id]),
        preloadPagesCount: 1,
      )),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
