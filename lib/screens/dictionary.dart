import 'package:flutter/material.dart';

class Dictionary extends StatefulWidget {
  const Dictionary({Key? key}) : super(key: key);

  @override
  State<Dictionary> createState() => _DictionaryState();
}

class _DictionaryState extends State<Dictionary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf1f5ff),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              "Alphabets",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(
            child: Image.asset(
              "assets/images/dictionary.jpg",
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              "Numbers",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(
            child: Image.asset(
              "assets/images/dictionary_numbers.jpg",
            ),
          ),
        ],
      ),
    );
  }
}
