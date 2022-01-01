import 'dart:async';

import 'package:abmart_uranus_academy/constants.dart';
import 'package:flutter/material.dart';

class Splash2 extends StatefulWidget {
  const Splash2({Key? key}) : super(key: key);

  @override
  State<Splash2> createState() => _Splash2State();
}

class _Splash2State extends State<Splash2> {

  goToSplash3(){
    return Timer(const Duration(milliseconds:2500 ), () {
      // 5 seconds over, navigate to Page2.
      Navigator.of(context).push(kSplash3);
    });
  }
  Widget _flightShuttleBuilder(
      BuildContext flightContext,
      Animation<double> animation,
      HeroFlightDirection flightDirection,
      BuildContext fromHeroContext,
      BuildContext toHeroContext,
      ) {
    return DefaultTextStyle(
      style: DefaultTextStyle.of(toHeroContext).style,
      child: toHeroContext.widget,
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    goToSplash3();
  }
  @override
  Widget build(BuildContext context) {
    String image = 'asset/images/VectorCart.png';
    String text= 'Abmart';
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
                child: Image.asset(image,height: 40,width: 40,)),
            Hero(
                tag: text,
                flightShuttleBuilder: _flightShuttleBuilder,
                child: Text(text,style: kHeading2,)),

          ],
        ),

      ),
    );
  }
}
