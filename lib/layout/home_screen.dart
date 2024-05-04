import 'package:flutter/material.dart';
import 'package:toku/modules/colors_screen.dart';
import 'package:toku/modules/family_member_screen.dart';
import 'package:toku/modules/numbers_screen.dart';
import 'package:toku/shared/compents/category_home_screen.dart';

import '../modules/phrases.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'HomeScreen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFF6DD),
      appBar: AppBar(
        backgroundColor: const Color(0xff533A2F),
        title: const Text(
          'Toku',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontFamily: 'Pacifico',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DefaultTextButton(
              onTap: () =>
                  Navigator.pushNamed(context, NumbersScreen.routeName),
              text: 'Numbers',
              backgroundColor: Colors.orangeAccent,
            ),
            DefaultTextButton(
              onTap: () =>
                  Navigator.pushNamed(context, FamilyMemberScreen.routeName),
              text: 'Family Members',
              backgroundColor: const Color(0xff5D8B38),
            ),
            DefaultTextButton(
              onTap: () => Navigator.pushNamed(context, ColorsScreen.routeName),
              text: 'Colors',
              backgroundColor: const Color(0xff8849AB),
            ),
            DefaultTextButton(
              onTap: () =>
                  Navigator.pushNamed(context, PhrasesScreen.routeName),
              text: 'Phrases',
              backgroundColor: const Color(0xff52AED1),
            ),
          ],
        ),
      ),
    );
  }
}
