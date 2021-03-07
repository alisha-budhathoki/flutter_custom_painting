import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_painting/tooltip_shape_border.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Instagram Like Balloon Tooltip'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: ShapeDecoration(
                  color: Colors.green,
                  shape: TooltipShapeBorder(),
                  shadows: [
                    BoxShadow(
                        color: Colors.black26,
                        blurRadius: 4.0,
                        offset: Offset(2, 2))
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text('Text 22 abc sdkjdskndsj',
                      style: TextStyle(color: Colors.white)),
                ),
              ),
              Tooltip(
                message: "sakns",
                child: Text('assnj'),
              ),
              Tooltip(
                message: "Thankyou for coming to the party",
                child: Text('null'),
                padding: EdgeInsets.all(8),
                decoration: ShapeDecoration(
                  color: Colors.green,
                  shape: TooltipShapeBorder(),
                  shadows: [
                    BoxShadow(
                        color: Colors.black26,
                        blurRadius: 4.0,
                        offset: Offset(2, 2))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FaceOutlinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    //Defining a paint object
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.0
      ..color = Colors.indigo;
    // canvas.drawRect(
    //   Rect.fromLTWH(20, 40, 100, 100),
    //   paint
    // );
    canvas.drawRRect(
        RRect.fromRectAndRadius(
            Rect.fromLTWH(20, 40, 100, 100), Radius.circular(20)),
        paint);

    canvas.drawOval(Rect.fromLTWH(size.width - 120, 40, 100, 100), paint);

    final mouth = Path();
    mouth.moveTo(size.width * 0.8, size.height * 0.6);
    mouth.arcToPoint(Offset(size.width * 0.2, size.height * 0.6),
        radius: Radius.circular(150), clockwise: true);
    mouth.arcToPoint(Offset(size.width * 0.8, size.height * 0.6),
        radius: Radius.circular(250), clockwise: true);

    canvas.drawPath(mouth, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
