import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_login/pages/home_page.dart';
// import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // var assetsImage = const AssetImage(
    //     'assets/images/whiskeyIcon.png'); //<- Creates an object that fetches an image.
    // var image = Image(
    //     image: assetsImage,
    //     fit: BoxFit.cover); //<- Creates a widget that displays an image.

    // bloquear la rotacion de la pantalla
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      title: 'Flutter login app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      //   home: Scaffold(
      //   appBar: AppBar(
      //     title: const Text("Climb your mountain!"),
      //     backgroundColor: Colors
      //         .amber[600], //<- background color to combine with the picture :-)
      //   ),
      //   body:
      //       // child: image
      //       Image.asset(
      //           "images/profile.jpg"), //<- place where the image appears
      // ),
    );
  }
}
