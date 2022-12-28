import 'dart:async';

import 'package:flutter/material.dart';

class MainState extends ChangeNotifier {
  Future<bool> loadApp(context) async {
    // TODO Replace with loading settings
    return Future.delayed(Duration(seconds: 4), () => true);
  }

  Future<bool> loadSettings() {}
  String _openedView;
  get openedView => _openedView;
  set openedView(val) {
    _openedView = val;
    notifyListeners();
  }

  int _selectedPage = 1;

  get selectedPage => _selectedPage;

  set selectedPage(int value) {
    _selectedPage = value;
    notifyListeners();
  }

  var pageController = PageController(initialPage: 1);
}
