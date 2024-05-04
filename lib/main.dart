import 'package:flutter/material.dart';
import 'package:toku/layout/home_screen.dart';
import 'package:toku/modules/colors_screen.dart';
import 'package:toku/modules/family_member_screen.dart';
import 'package:toku/modules/numbers_screen.dart';

import 'modules/phrases.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomeScreen.routeName: (_) => const HomeScreen(),
        NumbersScreen.routeName: (_) => const NumbersScreen(),
        FamilyMemberScreen.routeName: (_) => const FamilyMemberScreen(),
        ColorsScreen.routeName: (_) => const ColorsScreen(),
        PhrasesScreen.routeName: (_) => const PhrasesScreen(),
      },
      initialRoute: HomeScreen.routeName,
      debugShowCheckedModeBanner: true,
    );
  }
}
