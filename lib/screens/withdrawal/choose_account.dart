import 'package:flutter/material.dart';
import 'package:sign_language_detection/components/card.dart';
import 'package:sign_language_detection/screens/withdrawal/amount_to_witndraw.dart';

class ChooseAccount extends StatefulWidget {
  final String accountNumber;
  final String accountName;
  const ChooseAccount(
      {Key? key, required this.accountNumber, required this.accountName})
      : super(key: key);

  @override
  State<ChooseAccount> createState() => _ChooseAccountState();
}

class _ChooseAccountState extends State<ChooseAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          Center(
            child: Image.asset("assets/images/conversation.png"),
          ),
          CustomCard(
            text: "Savings",
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AmountToWithDraw(
                    accountType: "Savings Account",
                    accountNumber: widget.accountNumber,
                    accountName: widget.accountName,
                  ),
                ),
              );
            },
          ),
          Center(
            child: Image.asset("assets/images/conversation.png"),
          ),
          CustomCard(
            text: "Current",
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AmountToWithDraw(
                    accountType: "Current Account",
                    accountNumber: widget.accountNumber,
                    accountName: widget.accountName,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
