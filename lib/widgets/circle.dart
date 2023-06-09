import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

class Circle extends StatelessWidget {
  final double size;
  final List<Color> colors;

  // const Circle({super.key});
  // const Circle({Key key, @required this.size})
  const Circle({super.key, required this.size, required this.colors})
      : assert(size != null && size > 0),
        assert(colors != null && colors.length >= 2)
  // super(key: key);
  ;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          // color: Colors.orange,
          shape: BoxShape.circle,
          gradient: LinearGradient(
              colors: colors,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),
    );
  }
}
