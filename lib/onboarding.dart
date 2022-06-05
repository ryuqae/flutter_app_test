import 'package:flutter/material.dart';
import 'package:flutter_app_test/main.dart';
import 'package:flutter_app_test/mypage.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
            title: '아웃도어를 사랑하는 누구나!',
            body: 'Welcome to my app!',
            image: Image.asset('assets/image/onBoarding.jpeg'),
            decoration: getPageDecoration()),
        PageViewModel(
            title: 'Welcome to my app',
            body: 'Welcome to my app!',
            decoration: getPageDecoration()),
        PageViewModel(
            title: 'Welcome to my app',
            body: 'Welcome to my app!',
            decoration: getPageDecoration())
      ],
      done: const Text("done!"),
      onDone: () {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const MyApp()));
      },
      next: const Icon(Icons.arrow_forward),
      showSkipButton: true,
      skip: const Text('skip'),
      dotsDecorator: DotsDecorator(
          activeColor: Colors.cyan,
          activeSize: const Size(22, 10),
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24))),
      curve: Curves.bounceInOut,
    );
  }

  PageDecoration getPageDecoration() {
    return const PageDecoration(
        titleTextStyle:
            TextStyle(fontSize: bigfont, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: smallfont, color: Colors.orange),
        imagePadding: EdgeInsets.only(top: 30),
        pageColor: Colors.amber);
  }
}
