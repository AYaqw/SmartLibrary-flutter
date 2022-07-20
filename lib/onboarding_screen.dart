import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smart_library/log_screen.dart';
import 'page.dart';
import 'signScreen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final int _numPage = 4; //TODO:: 4
  final PageController pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _bulidPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPage; i++) {
      list.add(i == _currentPage ? _indictor(true) : _indictor(false));
    }
    return list;
  }

  Widget _indictor(bool isActive) {
    return AnimatedContainer(
      duration:const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
          color: isActive ? Colors.white : const Color(0xFF7B51D3),
          borderRadius: BorderRadius.circular(16.0)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [
                0.1,
                0.4,
                0.7,
                0.9
              ],
                  colors: [
                Color(0xFF3594DD),
                Color(0xFF4563DB),
                Color(0xFF5036d5),
                Color(0xFF5B16D0),
              ])),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  alignment: Alignment.centerRight,
                  child: FlatButton(
                    onPressed: () {
                      print("skip");
                      Navigator.push(context,MaterialPageRoute(builder: (context)=> SignScreen()));
                      /*_numPage=4;*/},
                    child: const Text(
                      'Skip',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                Container(
                  height: 600,
                  child: PageView(
                    physics: const ClampingScrollPhysics(),
                    controller: pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    children: [
                      // const SignScreen(),
                      //page-1
                      Page_screen("../assets/img1.png",
                          "There is no friend as loyal as a book."),
                      //page-2
                      Page_screen("../assets/img2.png",
                          "Today reader tomorrow a leader."),
                      //page-3
                      Page_screen("../assets/img3.png",
                          "It is better to Know one book intimately than a hundred suuperficially."),
                      //page-4
                      const log_screen(),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _bulidPageIndicator(),
                ),
                _currentPage != _numPage - 1
                    ? Expanded(
                        child: Align(
                          alignment: FractionalOffset.bottomRight,
                          child: FlatButton(
                            onPressed: () {
                              print("Next");
                              pageController.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children:const [
                                Text(
                                  'Next',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 22.0),
                                ),
                                 SizedBox(
                                  height: 10,
                                ),
                                 Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                  size: 30.0,
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    : const Text(''),
              ],
            ),
          ),
        ),
      ),

    );
  }
}
