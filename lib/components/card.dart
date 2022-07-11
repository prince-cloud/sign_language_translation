import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomCard extends StatelessWidget {
  final String text;
  void Function()? ontap;
  CustomCard({Key? key, required this.text, this.ontap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 7,
      child: InkWell(
        onTap: ontap,
        child: Container(
          padding: const EdgeInsets.all(20),
          width: MediaQuery.of(context).size.width * 0.8,
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
