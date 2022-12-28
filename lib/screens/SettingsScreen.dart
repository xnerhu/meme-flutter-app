import 'package:flutter/material.dart';
import 'package:memem/states/SettingsState.dart';
import 'package:memem/widgets/popups/DefaultSettings.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<SettingsState>(
      builder: (c, s, w) => Scaffold(
        appBar: AppBar(
          title: Text("Setting"),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => DefaultSettings(),
                );
              },
            )
          ],
        ),
        body: ListView(
          children: <Widget>[
            SwitchListTile(
              title: Text("Light theme"),
              value: s.lightTheme,
              onChanged: (val) {
                s.lightTheme = val;
              },
            ),
            SwitchListTile(
              title: Text("Show tab icons"),
              value: s.showTabIcons,
              onChanged: (val) {
                s.showTabIcons = val;
              },
            )
          ],
        ),
      ),
    );
  }
}
