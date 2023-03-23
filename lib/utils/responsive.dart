// // import 'dart:js';

// import 'package:flutter/material.dart';
// import 'dart:math' as math;

// //Se adapta a cualquier tipo de panalla
// class Responsive {
//   double _width, _height, _diagonal;

//   double get width => _width;
//   double get height => _height;
//   double get diagonal => _diagonal;

// // funcion statica que retorne una instancia de la clase Responsive
//   static Responsive of(BuildContext context) => Responsive(context);

// //constructor
//   // Responsive(BuildContext context, this._diagonal, this._height, this._width) {
//   Responsive(BuildContext context) {
//     final Size size = MediaQuery.of(context).size;
//     _width = size.width;
//     _height = size.height;

// // a = ancho
// // b = altura
// // sqrt => raiz cuadrada
// //c2 + a2 + b2 => c = rt(a2 + b2)
//     _diagonal = math.sqrt(math.pow(_width, 2) + math.pow(_height, 2));
//   }

//   //tomar fracciones del valor del ancho según un %
//   double wp(double percent) => _width * percent / 100;
//   double hp(double percent) => _height * percent / 100;
//   double dp(double percent) => _diagonal * percent / 100;
// }
