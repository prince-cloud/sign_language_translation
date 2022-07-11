import 'package:flutter/material.dart';

// ignore: must_be_immutable
class KeyLetter extends StatelessWidget {
  final String keyletter;
  void Function() ontap;
  KeyLetter({
    Key? key,
    required this.keyletter,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Colors.black45,
        ),
      ),
      child: InkWell(
        onTap: ontap,
        child: Image(
          image: AssetImage("assets/keyboard/$keyletter.jpg"),
          width: 60,
          height: 60,
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class KeyNumeric extends StatelessWidget {
  final String keyNumber;
  void Function() ontap;
  KeyNumeric({
    Key? key,
    required this.keyNumber,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Colors.black45,
        ),
      ),
      child: InkWell(
        onTap: ontap,
        child: Image(
          image: AssetImage("assets/keyboard/$keyNumber.jpg"),
          width: 60,
          height: 60,
        ),
      ),
    );
  }
}
