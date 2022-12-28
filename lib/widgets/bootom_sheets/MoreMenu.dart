import 'package:flutter/material.dart';
import 'package:memem/screens/SettingsScreen.dart';

class MoreMenu extends StatelessWidget {
  const MoreMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ListTile(
            onTap: () {},
            leading: Icon(Icons.share),
            title: Text("Share"),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.file_download),
            title: Text("Download"),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsScreen()),
              );
            },
            leading: Icon(Icons.settings),
            title: Text("Settings"),
          ),
        ],
      ),
    );
  }
}
