import 'package:abmart_uranus_academy/UI/SplashScreen/splash2.dart';
import 'package:flutter/material.dart';

import 'UI/Onbaording/onboarding_screen.dart';
import 'UI/SplashScreen/splash3.dart';

///Constant logo
String kLogoImage='asset/images/VectorCart.png';

///colors
Color kBrandColor = const Color(0xffFF8819);
Color kShadowsColor = const Color(0xffBDBDBD);
Color kGreyColor = const Color(0xffF2F2F2);
Color kGreyColor2 = const Color(0xffF7F7F7);
Color kTextFieldBorderColor = const Color(0xffE0E0E0);
Color kBottomSelectedColor = const Color(0xffFF8819);
Color kBottomUnSelectedColor = const Color(0xffBDBDBD);

///Bold fonts
TextStyle kHeading1 = const TextStyle(
  fontSize: 56,
  fontWeight: FontWeight.w800,
);

TextStyle kHeading2 = const TextStyle(
  fontSize: 48,
  fontWeight: FontWeight.w800,
);

TextStyle kHeading3 = const TextStyle(
  fontSize: 40,
  fontWeight: FontWeight.w800,
);

TextStyle kHeading4 = const TextStyle(
  fontSize: 32,
  fontWeight: FontWeight.w800,
);

TextStyle kHeading5 = const TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.w800,
);

TextStyle kHeading6 = const TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w800,
);

/// Regular Fonts
TextStyle kLargeTextBold = const TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w700,
);

TextStyle kLargeTextRegular = const TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w500,
);

TextStyle kMediumTextBold = const TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w700,
);

TextStyle kMediumTextRegular = const TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w500,
);

TextStyle kNormalTextBold = const TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w700,
);

TextStyle kNormalTextRegular = const TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w500,
);

TextStyle kSmallTextBold = const TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w700,
);

TextStyle kSmallTextRegular = const TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w500,
);

TextStyle kVerySmallTextUnSelectedRegular = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w700,
  color: kBottomUnSelectedColor
);

TextStyle kVerySmallTextSelectedRegular = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w700,
    color: kBottomSelectedColor
);

TextStyle kVeryLittleSmallTextSelectedRegular = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w700,
    color: kBottomSelectedColor
);

TextStyle kVeryVerySmallTextSelectedRegular = const TextStyle(
    fontSize: 8,
    fontWeight: FontWeight.w700,
    color: Colors.white70
);

///Splash CreateRoute
Route _createRoute(Widget pageMaterial) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation)=> pageMaterial ,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset.zero;
      const end = Offset.zero;
      const curve = Curves.easeIn;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

Route kSplash2 =_createRoute(const Splash2());
Route kSplash3 =_createRoute(const Splash3());
Route kOnboarding =_createRoute(const OnboardingScreen());


