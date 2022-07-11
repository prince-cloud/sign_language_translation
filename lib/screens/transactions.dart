import 'package:flutter/material.dart';
import 'package:sign_language_detection/components/card.dart';
import 'package:sign_language_detection/screens/withdrawal/choose_account.dart';

class Transactions extends StatefulWidget {
  final String accountNumber;
  final String accountName;
  const Transactions(
      {Key? key, required this.accountNumber, required this.accountName})
      : super(key: key);

  @override
  State<Transactions> createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
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
            text: "Withdrawal",
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChooseAccount(
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
          CustomCard(text: "Deposit"),
          CustomCard(text: "Bank Statement"),
          CustomCard(text: "Payments"),
        ],
      ),
    );
  }
}
