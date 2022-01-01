import 'dart:async';

import 'package:abmart_uranus_academy/UI/SplashScreen/splash2.dart';
import 'package:abmart_uranus_academy/constants.dart';
import 'package:flutter/material.dart';


class Splash1 extends StatefulWidget {
  const Splash1({Key? key}) : super(key: key);

  @override
  State<Splash1> createState() => _Splash1State();
}

class _Splash1State extends State<Splash1> {

  goToSplash2(){
   return Timer(const Duration(milliseconds:4000 ), () {
      // 5 seconds over, navigate to Page2.
      Navigator.of(context).push(kSplash2);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    goToSplash2();
  }
  @override
  Widget build(BuildContext context) {
    String image='asset/images/VectorCart.png';

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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Ab',style: kHeading2,),
            Hero(
                tag: image,
                child: Image.asset(image,height: 40,width: 40,)),
            Text('mart',style: kHeading2,)
          ],
        ),

      ),
    );
  }
}
