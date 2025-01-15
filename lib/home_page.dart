import 'package:flutter/material.dart';
import 'package:personal_web/widget/body.dart';
import 'package:personal_web/widget/drawer.dart';
import 'package:personal_web/widget/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(
              scaffoldKey: scaffoldKey,
            ),
            Body(),
            // Footer(),
          ],
        ),
      ),
      drawer: DrawerPage(),
    );
  }
}
