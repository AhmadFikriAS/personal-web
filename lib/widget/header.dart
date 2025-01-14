import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class Header extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const Header({super.key, required this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ResponsiveRowColumn(
        rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
        layout: ResponsiveRowColumnType.ROW,
        children: [
          ResponsiveRowColumnItem(
            rowFlex: 2,
            child: Padding(
              padding: EdgeInsets.only(
                left: ResponsiveBreakpoints.of(context).largerThan(TABLET)
                    ? 100
                    : 30,
                top: 20,
              ),
              child: Image.asset(
                'assets/icons/logos.png',
                scale: 4,
              ),
            ),
          ),
          ResponsiveRowColumnItem(
            rowFlex: 4,
            child: Padding(
              padding: EdgeInsets.only(
                right: ResponsiveBreakpoints.of(context).largerThan(TABLET)
                    ? 100
                    : 30,
                top: 20,
              ),
              child: ResponsiveBreakpoints.of(context).smallerThan(TABLET)
                  ? IconButton(
                      icon: const Icon(Icons.menu),
                      onPressed: () {
                        scaffoldKey.currentState?.openDrawer();
                      },
                    )
                  : Wrap(
                      spacing: 20,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Home',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'About',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Contact',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
