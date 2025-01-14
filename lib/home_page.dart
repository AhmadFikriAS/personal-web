import 'package:flutter/material.dart';
import 'package:personal_web/widget/body.dart';
import 'package:personal_web/widget/drawer.dart';
import 'package:personal_web/widget/footer.dart';
import 'package:personal_web/widget/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.indigo[50],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Header(
            scaffoldKey: scaffoldKey,
          ),
          Body(),
          Spacer(),
          Footer(),
        ],
      ),
      drawer: DrawerPage(),
    );
  }
}
