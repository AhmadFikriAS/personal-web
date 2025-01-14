import 'package:flutter/material.dart';
import 'package:personal_web/widget/body.dart';
import 'package:personal_web/widget/footer.dart';
import 'package:personal_web/widget/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[50],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Header(),
          Body(),
          Spacer(),
          Footer(),
        ],
      ),
    );
  }
}
