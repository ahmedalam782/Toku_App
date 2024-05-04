import 'package:flutter/material.dart';
import 'package:toku/shared/compents/category_screens.dart';
import '../shared/constant/lists.dart';

class ColorsScreen extends StatelessWidget {
  static const String routeName = 'ColorsScreen';

  const ColorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff533A2F),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
        ),
        title: const Text(
          'Colors',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontFamily: 'Pacifico',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (_, index) => CategoryScreens(
          numbersModel: colorsModel[index],
          backgroundColor: 0xff8849AB,
        ),
        itemCount: colorsModel.length,
      ),
    );
  }
}
