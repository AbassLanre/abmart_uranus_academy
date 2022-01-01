import 'package:abmart_uranus_academy/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboard/flutter_onboard.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('asset/images/splash_background.png'),
            fit: BoxFit.cover
          )
        ),
        child: OnBoard(
          imageHeight: 224,
          imageWidth: 249,
          pageController: _pageController,
          // Either Provide onSkip Callback or skipButton Widget to handle skip state
          onSkip: () {
            // print('skipped');
          },
          // Either Provide onDone Callback or nextButton Widget to handle done state
          onDone: () {
            // print('done tapped');
          },
          onBoardData: onBoardData,
          titleStyles: kHeading3.copyWith(color: Colors.white),

          descriptionStyles: kNormalTextRegular.copyWith(color: Colors.white70),
          pageIndicatorStyle: const PageIndicatorStyle(
            width: 60,
            inactiveColor: Colors.white,
            activeColor: Colors.white,
            inactiveSize: Size(8, 8),
            activeSize: Size(12, 12),
          ),
          // Either Provide onSkip Callback or skipButton Widget to handle skip state
          skipButton: TextButton(
            onPressed: () {
              // print('skipButton pressed');
            },
            child: Text(
              "Skip",
              style: kNormalTextBold.copyWith(color: Colors.white),
            ),
          ),
          // Either Provide onDone Callback or nextButton Widget to handle done state
          nextButton: OnBoardConsumer(
            builder: (context, ref, child) {
              final state = ref.watch(onBoardStateProvider);
              return InkWell(
                onTap: () => _onNextTap(state),
                child: Container(
                  width: 230,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white
                  ),
                  child: Text(
                    state.isLastPage ? "Start Shopping" : "Next",
                    style: kNormalTextRegular,
                    ),
                  ),
                );

            },
          ),
        ),
      ),
    );
  }
  void _onNextTap(OnBoardState onBoardState) {
    if (!onBoardState.isLastPage) {
      _pageController.animateToPage(
        onBoardState.page + 1,
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeInOutSine,
      );
    } else {
      //print("nextButton pressed");
    }
  }
}



final List<OnBoardModel> onBoardData = [
  const OnBoardModel(
    title: "Stay home, \nshop online",
    description: "Stay home, we deliver to your doorstep fast and easy. ",
    imgUrl: "asset/images/amico.png",
  ),
  const OnBoardModel(
    title: "An online store you can trust",
    description:
    "What you order is exactly as it is when it gets to you",
    imgUrl: 'asset/images/pana.png',
  ),
  const OnBoardModel(
    title: "Start shopping now",
    description:
    "The best of services and offers just waiting for you!",
    imgUrl: 'asset/images/cuate.png',
  ),
];
