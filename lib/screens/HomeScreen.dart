import 'package:flutter/material.dart';
import 'package:memem/pages/ChatPage.dart';
import 'package:memem/pages/DiscoverPage.dart';
import 'package:memem/pages/FeedPage.dart';
import 'package:memem/pages/ProfilePage.dart';
import 'package:memem/widgets/overlay/BottomBar.dart';
import 'package:memem/widgets/overlay/Fab.dart';
import 'package:memem/widgets/overlay/OverlayView.dart';
import 'package:memem/widgets/overlay/TopBar.dart';
import 'package:provider/provider.dart';
import 'package:memem/states/MainState.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final store = Provider.of<MainState>(context);

    return Container(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            PageView(
              controller: store.pageController,
              onPageChanged: (page) {
                setState(() {
                  store.selectedPage = page;
                });
              },
              children: [
                DiscoverPage(),
                FeedPage(),
                ChatPage(),
                ProfilePage(),
              ],
            ),
            OverlayView(children: [
              TopBar(),
              BottomBar(),
            ]),
          ],
        ),
        floatingActionButton: Fab(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
