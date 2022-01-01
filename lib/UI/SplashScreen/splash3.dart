import 'dart:async';

import 'package:abmart_uranus_academy/constants.dart';
import 'package:flutter/material.dart';

class Splash3 extends StatefulWidget {
  const Splash3({Key? key}) : super(key: key);

  @override
  State<Splash3> createState() => _Splash3State();
}

class _Splash3State extends State<Splash3> {
  goToOnboarding(){
    return Timer(const Duration(milliseconds:2500 ), () {
      // 5 seconds over, navigate to Page2.
      Navigator.of(context).pushReplacement(kOnboarding);
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    goToOnboarding();
  }

  @override
  Widget build(BuildContext context) {
    String image = 'asset/images/VectorCart.png';
    String text = 'Abmart';
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('asset/images/splash_background.png'),
                fit: BoxFit.cover
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
                tag: image,
                child: Image.asset(image,height: 72.68,width: 71.71,)),
            Hero(
                tag: text,
                child: Text(text,style: kHeading5,)),

          ],
        ),

      ),
    );
  }
}
