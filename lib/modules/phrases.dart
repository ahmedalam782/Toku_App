import 'package:flutter/material.dart';

import 'package:toku/shared/compents/phrases_model_screen.dart';

import '../shared/constant/lists.dart';

class PhrasesScreen extends StatelessWidget {
  static const String routeName = 'PhrasesScreen';

  const PhrasesScreen({super.key});

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
          'Phrases',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontFamily: 'Pacifico',

            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (_, index) => PhrasesScreenModel(
          itemInfoModel: phrasesModel[index],
          backgroundColor: 0xff52AED1,
        ),
        itemCount: phrasesModel.length,
      ),
    );
  }
}
