import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:sign_language_detection/components/btn.dart';
import 'package:sign_language_detection/screens/bank_statement/summary.dart';

class EndDate extends StatefulWidget {
  final String startDate;
  const EndDate({super.key, required this.startDate});

  @override
  State<EndDate> createState() => _EndDateState();
}

class _EndDateState extends State<EndDate> {
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
              "assets/images/end_date.gif",
              height: 300,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Center(
            child: Text(
              "End Date",
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
                label: Text("End Date"),
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
                  builder: (context) => BankStatementSummary(
                    startDate: widget.startDate,
                    endDate: maskFormatter.getMaskedText(),
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
