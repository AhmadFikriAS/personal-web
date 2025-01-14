import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
          left: ResponsiveBreakpoints.of(context).largerThan(TABLET) ? 120 : 50,
          top: 50,
          right: ResponsiveBreakpoints.of(context).largerThan(TABLET)
              ? 120
              : 30, // Mengurangi padding kanan untuk layar kecil
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello, I\'m',
              style: TextStyle(
                fontSize: ResponsiveBreakpoints.of(context).largerThan(TABLET)
                    ? 20
                    : 16,
              ),
            ),
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'Ahmad Fikri Aslam Suharto',
                  speed: const Duration(milliseconds: 100),
                  textStyle: TextStyle(
                    fontSize:
                        ResponsiveBreakpoints.of(context).largerThan(TABLET)
                            ? 50
                            : 30,
                  ),
                ),
                TypewriterAnimatedText(
                  'Flutter Developer',
                  speed: const Duration(milliseconds: 100),
                  textStyle: TextStyle(
                    fontSize:
                        ResponsiveBreakpoints.of(context).largerThan(TABLET)
                            ? 50
                            : 30,
                  ),
                ),
              ],
              repeatForever: true,
            ),
            // Teks panjang dengan batas lebar maksimum
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: ResponsiveBreakpoints.of(context)
                              .largerThan(TABLET)
                          ? constraints.maxWidth *
                              0.7 // Membatasi lebar maksimum untuk layar besar
                          : constraints.maxWidth *
                              0.9, // Lebar lebih besar di layar kecil
                    ),
                    child: Text(
                      textAlign: TextAlign.justify,
                      'As a skilled Flutter Developer, I have extensive experience in developing Android, desktop, and web applications using Flutter. I specialize in building efficient, user-friendly interfaces and integrating seamless functionality. Additionally, I have hands-on experience in IT help desk support, ensuring smooth operations and quick issue resolution.',
                      style: TextStyle(
                        fontSize:
                            ResponsiveBreakpoints.of(context).largerThan(TABLET)
                                ? 16
                                : 12,
                        color: Colors.grey[600],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
