import 'package:flutter/material.dart';
import 'package:flutter_application/routes/app_route.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: IntroductionScreen(
        pages: [
          PageViewModel(
            title: 'A reader lives a thousand lives',
            body: 'The man who never reads lives only one.',
            image: buildImage("assets/images/ebook.png"),
            decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: 'Featured Books',
            body: 'Available right at your fingerprints',
            image: buildImage('assets/images/readingbook.png'),
            decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: 'Simple UI',
            body: 'For enhanced reading experience',
            image: buildImage('assets/images/manthumbs.png'),
            decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: 'Today a reader, tomorrow a leader',
            body: 'Start your journey',
            image: buildImage('assets/images/learn.png'),
            decoration: getPageDecoration(),
          ),
        ],
        done: Text(
          "Done",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        onDone: () {
          onDone();
        },
        showSkipButton: true,
        skip: Text("skip"),
        onSkip: () {
          onDone();
        },
        showNextButton: true,
        next: Text("next"),
        dotsDecorator: getDotDecoration(),
        // globalBackgroundColor: Theme.of(context).primaryColor,
        skipFlex: 0,
        nextFlex: 0,
      ),
    );
  }

  void onDone() {
    Get.offAllNamed(Routes.home);
    GetStorage().write('onboarding', true);
  }

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 350));

  PageDecoration getPageDecoration() => PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 20),
        descriptionPadding: EdgeInsets.all(16).copyWith(bottom: 0),
        imagePadding: EdgeInsets.all(24),
        pageColor: Colors.white,
      );

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: Color(0xFFBDBDBD),
        activeColor: Colors.orange,
        size: Size(10, 10),
        activeSize: Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      );
}
