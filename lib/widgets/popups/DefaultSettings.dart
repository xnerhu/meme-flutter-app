import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:memem/states/SettingsState.dart';

class DefaultSettings extends StatelessWidget {
  const DefaultSettings({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AlertDialog(
        title: Text('Restore defaults?'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
                'Do you want to restore default settings? This cannot be undone!')
          ],
        ),
        actions: <Widget>[
          FlatButton(
            child: Text('No'),
            textColor: Theme.of(context).accentColor,
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          FlatButton(
            child: Text('Yes'),
            textColor: Theme.of(context).accentColor,
            onPressed: () {
              Provider.of<SettingsState>(context).restoreDefaults();
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
