import 'package:flutter/material.dart';
import 'ShadowIcon.dart';
import 'package:provider/provider.dart';
import 'package:memem/states/MainState.dart';

class StyledTab extends StatefulWidget {
  const StyledTab({
    @required this.title,
    this.icon,
    this.id,
    Key key,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final int id;

  @override
  _StyledTabState createState() => _StyledTabState();
}

class _StyledTabState extends State<StyledTab> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final store = Provider.of<MainState>(context);
    final selected = store.selectedPage == widget.id;

    return GestureDetector(
      onTap: () {
        store.pageController.animateToPage(
          widget.id,
          duration: Duration(milliseconds: 300),
          curve: Curves.fastOutSlowIn,
        );
        store.selectedPage = widget.id;
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
        decoration: BoxDecoration(
          color: selected ? Colors.white.withOpacity(0.5) : null,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
          child: Row(
            children: <Widget>[
              ShadowIcon(widget.icon),
              AnimatedSize(
                vsync: this,
                duration: Duration(milliseconds: 300),
                curve: Curves.easeOut,
                child: Container(
                  width: selected ? null : 0,
                  child: Row(
                    children: <Widget>[
                      SizedBox(width: 10.0),
                      Text(
                        widget.title,
                        style: TextStyle(
                          shadows: <Shadow>[
                            Shadow(
                              blurRadius: 4.0,
                              color: Colors.black.withOpacity(0.4),
                            ),
                          ],
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
