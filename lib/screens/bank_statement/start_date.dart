import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sign_language_detection/components/btn.dart';
import 'package:sign_language_detection/screens/bank_statement/end_date.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class StartDate extends StatefulWidget {
  const StartDate({super.key});

  @override
  State<StartDate> createState() => _StartDateState();
}

class _StartDateState extends State<StartDate> {
  var maskFormatter = MaskTextInputFormatter(
    mask: '##/##/####',
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          Center(
            child: Image.asset(
              "assets/images/start_date.gif",
              height: 300,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Center(
            child: Text(
              "Start Date",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(15),
            child: TextField(
              inputFormatters: [maskFormatter],
              decoration: const InputDecoration(
                label: Text("Start Date"),
                hintText: "DD/MM/YYYY",
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          CustomBtn(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EndDate(
                    startDate: maskFormatter.getMaskedText(),
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
