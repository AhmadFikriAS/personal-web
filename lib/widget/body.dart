import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 30, top: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello, World!',
              style: TextStyle(fontSize: 50),
            ),
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText('Ahmad Fikri Aslam Suharto',
                    speed: const Duration(milliseconds: 100),
                    textStyle: TextStyle(
                      fontSize: 30,
                    )),
                TypewriterAnimatedText('Flutter Developer',
                    speed: const Duration(milliseconds: 100),
                    textStyle: TextStyle(fontSize: 30)),
              ],
              repeatForever: true,
            ),
          ],
        ),
      ),
    );
  }
}
