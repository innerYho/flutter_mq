// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/utils/responsive.dart';
import 'package:flutter_login/widgets/circle.dart';
import 'package:flutter_login/widgets/icon_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //Establecer medidas para todos los dispositivos
    final sizeVal = MediaQuery.of(context).size;
    // final Responsive responsive = Responsive.of(context);
    final double pinkSize = sizeVal.width * 0.8;
    final double orangeSize = sizeVal.width * 0.57;
    return Scaffold(
      body: Container(
        // ocupa todo el espacio posible
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,

        //definir esferas de fondo
        child: Stack(
          //centrar elemento horizontalmente
          alignment: Alignment.center,
          children: [
            Positioned(
              // top: -140,
              // right: -50,
              // top: -(Size.width * 0.8) * 0.4,
              // right: -(Size.width * 0.8) * 0.2,
              top: -pinkSize * 0.4,
              right: -pinkSize * 0.2,
              child: Circle(
                // size: 340, tamaño fijo no responsivo
                size: sizeVal.width * 0.8,
                colors: const [
                  Colors.pinkAccent,
                  Colors.pink,
                ],
              ),
            ),
            Positioned(
              // top: -100,
              // left: -50,
              top: -orangeSize * 0.55,
              left: -orangeSize * 0.15,
              child: Circle(
                // size: 240,
                size: sizeVal.width * 0.57,

                colors: const [
                  // Colors.orange,
                  Colors.yellow,
                  Colors.deepOrangeAccent
                ],
              ),
            ),
            Positioned(
                // top: 130,
                top: pinkSize * 0.35,
                child: Column(
                  children: [
                    IconContainer(
                      // sizeIcon: 120,
                      sizeIcon: sizeVal.width * 0.17,
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      "Hello again\nWelcome back",
                      textAlign: TextAlign.center,
                    )
                  ],
                ))
            // Image.asset("assets/images/whiskeyIcon.png")
          ],
        ),
      ),
    );
  }
}
