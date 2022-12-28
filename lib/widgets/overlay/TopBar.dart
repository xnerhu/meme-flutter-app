import 'package:flutter/material.dart';
import 'package:memem/constants/design.dart';
import 'package:memem/states/SettingsState.dart';
import 'package:memem/widgets/overlay/StyledTab.dart';
import 'package:provider/provider.dart';

class TopBar extends StatefulWidget {
  const TopBar({Key key}) : super(key: key);

  @override
  _TopBarState createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  int id = 1;

  Function selectTab(int id) {
    return () {
      setState(() {
        this.id = id;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    var _s = Provider.of<SettingsState>(context);

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(135, 0, 0, 0),
            Colors.transparent,
          ],
          stops: OVERLAY_GRADIENT_STOPS,
        ),
      ),
      child: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              StyledTab(
                id: 0,
                title: "Discover",
                icon: Icons.public,
              ),
              StyledTab(
                id: 1,
                title: "Feed",
                icon: Icons.dashboard,
              ),
              StyledTab(
                id: 2,
                title: "Chat",
                icon: Icons.chat,
              ),
              StyledTab(
                id: 3,
                title: "Profile",
                icon: Icons.account_circle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
