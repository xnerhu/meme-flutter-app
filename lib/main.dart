import 'package:flutter/material.dart';
import 'package:memem/screens/ErrorScreen.dart';
import 'package:memem/screens/HomeScreen.dart';
import 'package:memem/screens/LoadingScreen.dart';
import 'package:memem/states/MainState.dart';
import 'package:memem/states/SettingsState.dart';
import 'package:provider/provider.dart';

void main() => runApp(MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => MainState()),
      ChangeNotifierProvider(create: (_) => SettingsState()),
    ], child: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _s = Provider.of<SettingsState>(context);
    return MaterialApp(
      title: 'Memem',
      // TODO: Add global theme support
      darkTheme: ThemeData(
          accentColor: Colors.cyanAccent,
          brightness: _s.lightTheme ? Brightness.light : Brightness.dark),
      theme: ThemeData(accentColor: Colors.cyanAccent),
      home: FutureBuilder<bool>(
        future: Provider.of<MainState>(context).loadApp(context),
        builder: (context, snapshot) {
          if (snapshot.hasData)
            return HomeScreen();
          else if (snapshot.hasError)
            return ErrorScreen();
          else
            return LoadingScreen();
        },
      ),
      //HomeScreen(),
    );
  }
}
