import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:saga/src/hive/notes_schema.dart';
import 'package:saga/src/notes/notes_view.dart';
import 'package:path/path.dart' as path;

class OnboardingView extends StatelessWidget {
  const OnboardingView({
    Key? key,
  }) : super(key: key);

  static const routeName = '/onboarding';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        nextColor: Colors.black,
        doneColor: Colors.black,
        skipColor: Colors.black,
        pages: [
          PageViewModel(
            image: Image.network(
              'https://cdn.dribbble.com/users/1634920/screenshots/8156643/media/e7ed56a3b4aa90bc0c20f02ae0c2346c.jpg',
            ),
            useScrollView: true,
            decoration: const PageDecoration(
              imageFlex: 2,
            ),
            title: 'Text decription for saga notes',
            bodyWidget:
                Center(child: Text('Keep your notes near to you everywhere')),
          ),
          PageViewModel(
            image: Image.network(
              'https://cdn.dribbble.com/users/1634920/screenshots/8156643/media/e7ed56a3b4aa90bc0c20f02ae0c2346c.jpg',
            ),
            useScrollView: true,
            decoration: const PageDecoration(
              imageFlex: 2,
            ),
            title: 'Text decription for saga notes',
            bodyWidget:
                Center(child: Text('Keep your notes near to you everywhere')),
          ),
        ],
        done: Text('done'),
        isTopSafeArea: false,
        dotsDecorator: const DotsDecorator(
            activeColor: Colors.black,
            size: Size(4, 4),
            activeSize: Size(6, 6),
            spacing: EdgeInsets.all(3)),
        showSkipButton: true,
        showNextButton: true,
        skip: Text('skip'),
        next: Text('next'),
        onSkip: () {},
        onChange: (value) {},
        onDone: () async {
          Navigator.restorablePushReplacementNamed(
            context,
            NotesView.routeName,
          );
        },
      ),
    );
  }
}
