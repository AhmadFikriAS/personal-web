import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30, top: 20),
          child: Wrap(
            spacing: 20,
            children: [
              TextButton(
                onPressed: () {},
                child: Text('Home', style: TextStyle(color: Colors.black)),
              ),
              TextButton(
                onPressed: () {},
                child: Text('About', style: TextStyle(color: Colors.black)),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Contact', style: TextStyle(color: Colors.black)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
