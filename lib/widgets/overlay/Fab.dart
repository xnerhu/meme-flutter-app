import 'package:flutter/material.dart';
import 'package:memem/states/MainState.dart';
import 'package:provider/provider.dart';

class Fab extends StatelessWidget {
  const Fab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<MainState>(builder: (c, state, w) {
      if (state.openedView != null) return Container();
      return Container(
        padding: EdgeInsets.all(20.0),
        child: FloatingActionButton(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          child: Icon(Icons.edit),
          onPressed: () {},
        ),
      );
    });
  }
}
