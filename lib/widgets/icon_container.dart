// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class IconContainer extends StatelessWidget {
  final double sizeIcon;
  const IconContainer({super.key, required this.sizeIcon})
      : assert(sizeIcon != null && sizeIcon > 0);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 110,
      // height: 110,
      width: sizeIcon,
      height: sizeIcon,
      decoration: BoxDecoration(
          //si se define un "decoration" es necesario dejar su atributo "color" dentro
          color: Colors.white,
          // borderRadius: BorderRadius.circular(20), //borde redondeado
          borderRadius:
              BorderRadius.circular(sizeIcon * 0.12), //borde redondeado
          boxShadow: const [
            BoxShadow(
              color: Colors.black26, //borde sombreado
              blurRadius: 25,
              offset: Offset(0, 10),
            )
          ]),
      // padding: const EdgeInsets.all(28),
      padding: EdgeInsets.all(sizeIcon * 0.15),
      child: Center(
          //     child: Text(
          //   'Oeschinen Lake Campground',
          //   style: TextStyle(
          //     fontWeight: FontWeight.bold,
          //   ),
          // )
          child: Image.asset(
        'assets/images/hi.png',
        // width: 80,
        // height: 80,
        width: sizeIcon * 0.6,
        height: sizeIcon * 0.6,
      )),
    );
  }
}
