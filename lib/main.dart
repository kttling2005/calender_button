import 'package:flutter/material.dart';
import 'build_card.dart';
import 'tap_panda.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: const Color.fromARGB(224, 14, 14, 14),
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        BuildCard(
                          text1: 'Mon',
                          image: 'assets/Panda smile.png',
                        ),
                        BuildCard(
                          text1: 'Tue',
                          image: 'assets/Panda_apple 2.png',
                        ),
                        BuildCard(
                          text1: 'Wed',
                          image: 'assets/Panda_furious 2.png',
                        ),
                        BuildCard(text1: 'Thu', image: 'assets/Panda-butt.png'),
                        BuildCard(
                          text1: 'Fri',
                          image: 'assets/Panda-fall  2.png',
                        ),
                        BuildCard(
                          text1: 'Sat',
                          image: 'assets/Panda-hide  2.png',
                        ),
                        BuildCard(
                          text1: 'Sun',
                          image: 'assets/Panda-pear .png',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  TapPanda(
                    text1: 'Tap Panda :3',
                    image: 'assets/Panda-tongue .png',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
