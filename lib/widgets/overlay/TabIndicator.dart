import 'package:flutter/material.dart';

class TabIndicator extends Decoration {
  final double height;
  final Color color;

  const TabIndicator({@required this.height, @required this.color});

  @override
  _TabIndicatorPainter createBoxPainter([VoidCallback onChanged]) {
    return new _TabIndicatorPainter(this, onChanged);
  }
}

class _TabIndicatorPainter extends BoxPainter {
  final TabIndicator decoration;

  _TabIndicatorPainter(this.decoration, VoidCallback onChanged)
      : assert(decoration != null),
        super(onChanged);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    assert(configuration != null);
    assert(configuration.size != null);

    Rect rect;
    rect = Offset(offset.dx + 12,
            (configuration.size.height - decoration.height - 1 ?? 4)) &
        Size(configuration.size.width - 24, decoration.height ?? 4);

    final Paint paint = Paint();
    paint.color = decoration.color ?? Color(0xff1967d2);
    paint.style = PaintingStyle.fill;

    final RRect rrect = RRect.fromRectAndRadius(rect, Radius.circular(16));
    final Path path = Path();
    path.addRRect(rrect);

    canvas.drawShadow(path, Colors.black.withOpacity(0.5), 2.0, true);
    canvas.drawRRect(rrect, paint);
  }
}
