import 'package:flutter/material.dart';
import 'package:memem/constants/design.dart';
import 'package:memem/widgets/bootom_sheets/Comments.dart';
import 'package:memem/widgets/bootom_sheets/MoreMenu.dart';
import 'package:memem/widgets/overlay/ShadowIcon.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 8.0, top: 32.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            Color.fromARGB(100, 0, 0, 0),
            Colors.transparent,
          ],
          stops: OVERLAY_GRADIENT_STOPS,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: ShadowIcon(Icons.more_vert),
                onPressed: () {
                  showModalBottomSheet(
                    elevation: 32.0,
                    context: context,
                    builder: (context) => MoreMenu(),
                  );
                },
                color: Colors.white,
              ),
              IconButton(
                icon: ShadowIcon(Icons.comment),
                onPressed: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (context) => Comments(),
                  );
                },
              ),
              SizedBox(
                height: 50.0,
                width: 72.0,
              ),
              IconButton(
                icon: ShadowIcon(Icons.thumb_down),
                onPressed: () {},
                color: Colors.white,
              ),
              IconButton(
                icon: ShadowIcon(Icons.thumb_up),
                onPressed: () {},
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
