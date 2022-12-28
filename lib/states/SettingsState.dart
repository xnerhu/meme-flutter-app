import 'dart:convert';

import 'package:flutter/material.dart';

class SettingsState extends ChangeNotifier {
  bool _showTabIcons = false;
  get showTabIcons => _showTabIcons;
  set showTabIcons(val) {
    _showTabIcons = val;
    notifyListeners();
  }

  bool _lightTheme = false;
  get lightTheme => _lightTheme;
  set lightTheme(val) {
    _lightTheme = val;
    notifyListeners();
  }

  restoreDefaults() {
    // TODO: Implement that
  }
}
