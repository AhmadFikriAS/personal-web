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
            rowFlex: 3,
            child: Padding(
              padding: EdgeInsets.only(
                left: ResponsiveBreakpoints.of(context).largerThan(TABLET)
                    ? 200
                    : 30,
                top: 20,
              ),
              child: Text('< / FikDev >',
                  style: TextStyle(
                    fontSize:
                        ResponsiveBreakpoints.of(context).largerThan(TABLET)
                            ? 16
                            : 15,
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ),
          ResponsiveRowColumnItem(
            rowFlex: 5,
            child: Padding(
              padding: EdgeInsets.only(
                right: ResponsiveBreakpoints.of(context).largerThan(TABLET)
                    ? 200
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
                          child: Text(
                            'Home',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: ResponsiveBreakpoints.of(context)
                                      .largerThan(TABLET)
                                  ? 16
                                  : 15,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'About',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: ResponsiveBreakpoints.of(context)
                                      .largerThan(TABLET)
                                  ? 16
                                  : 15,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Contact',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: ResponsiveBreakpoints.of(context)
                                      .largerThan(TABLET)
                                  ? 16
                                  : 15,
                            ),
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
