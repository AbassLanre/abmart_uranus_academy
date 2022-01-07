import 'package:abmart_uranus_academy/UI/homescreen/home_screen.dart';
import 'package:abmart_uranus_academy/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      height: 8.0,
      width: isActive ? 28.0 : 8.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.white70,
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('asset/images/splash_background.png'),
                  fit: BoxFit.fill)),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  alignment: Alignment.centerRight,
                  child: MaterialButton(
                    onPressed: () => print('Skip'),
                    child: _currentPage == 2
                        ? const Text('')
                        : Text('Skip',
                            style:
                                kNormalTextBold.copyWith(color: Colors.white)),
                  ),
                ),
                SizedBox(
                  height: height * 0.055,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: PageView(
                    physics: const ClampingScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Center(
                              child: Image(
                                image: AssetImage(
                                  'asset/images/amico.png',
                                ),
                                height: 224.0,
                                width: 249.0,
                              ),
                            ),
                            SizedBox(height: height * 0.044),
                            Center(
                              child: Text(
                                'Stay home, \nshop online',
                                style: kHeading3.copyWith(color: Colors.white),
                              ),
                            ),
                            const SizedBox(height: 8.0),
                            Center(
                              child: Text(
                                'Stay home, we deliver to your doorstep fast and easy.',
                                style: kNormalTextRegular.copyWith(
                                    color: Colors.white70),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Center(
                              child: Image(
                                image: AssetImage(
                                  'asset/images/pana.png',
                                ),
                                height: 224.0,
                                width: 249.0,
                              ),
                            ),
                            SizedBox(height: height * 0.044),
                            Center(
                              child: Text(
                                'An online store you can trust',
                                style: kHeading3.copyWith(color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            const SizedBox(height: 8.0),
                            Center(
                              child: Text(
                                'What you order is exactly as it is when it gets to you.',
                                style: kNormalTextRegular.copyWith(
                                    color: Colors.white70),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Center(
                              child: Image(
                                image: AssetImage(
                                  'asset/images/cuate.png',
                                ),
                                height: 224.0,
                                width: 249.0,
                              ),
                            ),
                            SizedBox(height: height * 0.044),
                            Center(
                              child: Text(
                                'Start shopping now',
                                style: kHeading3.copyWith(color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            const SizedBox(height: 8.0),
                            Center(
                              child: Text(
                                'The best of services and offers just waiting for you!',
                                style: kNormalTextRegular.copyWith(
                                    color: Colors.white70),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.033,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndicator(),
                ),
                SizedBox(
                  height: height * 0.077,
                ),
                _currentPage != _numPages - 1
                    ? Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 90.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: MaterialButton(
                            onPressed: () {
                              _pageController.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            },
                            child: Text(
                              'Next',
                              style: kNormalTextRegular,
                            ),
                          ),
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 90.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: MaterialButton(
                              onPressed: ()=> Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>const HomeScreen())),
                              child: Text(
                                'Start Shopping',
                                style: kNormalTextRegular,
                              )),
                        ),
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
