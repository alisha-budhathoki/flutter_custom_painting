import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
final Color darkBlue = Color.fromARGB(255, 18, 32, 47);
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Colors.white,
          padding: EdgeInsets .symmetric(horizontal: 40, vertical: 80),
          child: LayoutBuilder(
            builder: (_, constraints) =>Container(
              width: constraints.widthConstraints().maxWidth,
              height: constraints.heightConstraints().maxHeight,
              color: Colors.yellow,
              child: CustomPaint(painter  : FaceOutlinePainter(),),
            ),
          ),
        ),
      ),
    );
  }
}
class FaceOutlinePainter extends CustomPainter{
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
    canvas.drawRRect(RRect.fromRectAndRadius(Rect.fromLTWH(20, 40, 100, 100),
    Radius.circular(20)),
    paint);

    canvas.drawOval(Rect.fromLTWH(size.width-120, 40, 100, 100), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }

}
