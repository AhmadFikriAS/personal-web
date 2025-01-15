import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://www.linkedin.com/in/ahmadfikrias');

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    bool isSmallScreen = ResponsiveBreakpoints.of(context).smallerThan(TABLET);
    bool isLargeScreen = ResponsiveBreakpoints.of(context).largerThan(TABLET);

    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
          left: ResponsiveBreakpoints.of(context).smallerThan(TABLET)
              ? 30
              : isLargeScreen
                  ? 200
                  : 30,
          top: ResponsiveBreakpoints.of(context).smallerThan(TABLET) ? 50 : 100,
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (isSmallScreen) // Gambar di atas untuk layar kecil
                  Center(
                    child: Image.asset(
                      'assets/images/char.png',
                      scale:
                          ResponsiveBreakpoints.of(context).smallerThan(TABLET)
                              ? 6
                              : 7,
                    ),
                  ),
                Text(
                  'Hello, I\'m',
                  style: TextStyle(
                    fontSize: isSmallScreen ? 16 : 40,
                  ),
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'Ahmad Fikri Aslam Suharto',
                      speed: const Duration(milliseconds: 100),
                      textStyle: TextStyle(
                        fontSize: isSmallScreen ? 20 : 60,
                      ),
                    ),
                    TypewriterAnimatedText(
                      'Flutter Developer',
                      speed: const Duration(milliseconds: 100),
                      textStyle: TextStyle(
                        fontSize: isSmallScreen ? 20 : 60,
                      ),
                    ),
                  ],
                  repeatForever: true,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      return ConstrainedBox(
                        constraints: BoxConstraints(
                          maxWidth: isSmallScreen
                              ? constraints.maxWidth *
                                  0.9 // Lebar untuk layar kecil
                              : constraints.maxWidth *
                                  0.5, // Lebar untuk layar menengah
                        ),
                        child: Text(
                          textAlign: TextAlign.justify,
                          'As a skilled Flutter Developer, I have extensive experience in developing Android, desktop, and web applications using Flutter. I specialize in building efficient, user-friendly interfaces and integrating seamless functionality. Additionally, I have hands-on experience in IT help desk support, ensuring smooth operations and quick issue resolution.',
                          style: TextStyle(
                            fontSize: isSmallScreen ? 12 : 16,
                            color: Colors.grey[600],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 10,
                    children: [
                      Icon(Icons.location_on),
                      Text('Makassar, South Sulawesi')
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30, bottom: 50),
                  child: SizedBox(
                    width: 150,
                    height: 45,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: _launchUrl,
                      child: FittedBox(
                        child: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          alignment: WrapAlignment.spaceBetween,
                          spacing: 10,
                          children: [
                            Icon(
                              FontAwesomeIcons.linkedin,
                              color: Colors.white,
                              size: 30,
                            ),
                            Text(
                              'Connect Me',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            if (!isSmallScreen) // Gambar di atas untuk layar kecil
              Padding(
                padding: EdgeInsets.only(
                  right: ResponsiveBreakpoints.of(context).largerThan(TABLET)
                      ? 100
                      : 30,
                ),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Image.asset('assets/images/char.png',
                      scale: isSmallScreen ? 5 : 3),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}
