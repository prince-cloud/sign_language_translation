import 'package:flutter/material.dart';
import 'package:sign_language_detection/components/card.dart';
import 'package:sign_language_detection/screens/deposit/deposite_amount.dart';
import 'package:sign_language_detection/screens/deposit/other_account.dart';
import 'package:sign_language_detection/screens/deposit/other_account_bank_name.dart';

class ChooseDepositType extends StatefulWidget {
  final String accountNumber;
  final String accountName;
  const ChooseDepositType(
      {super.key, required this.accountNumber, required this.accountName});

  @override
  State<ChooseDepositType> createState() => _ChooseDepositTypeState();
}

class _ChooseDepositTypeState extends State<ChooseDepositType> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 15,
          ),
          const Center(
            child: Text(
              "Select Account Type.",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Center(
            child: Image.asset("assets/images/conversation.png"),
          ),
          CustomCard(
            text: "Self",
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DepositAmount(
                    accountType: "self",
                    accountNumber: widget.accountNumber,
                    accountName: widget.accountName,
                    bankName: '',
                  ),
                ),
              );
            },
          ),
          Center(
            child: Image.asset("assets/images/conversation.png"),
          ),
          CustomCard(
            text: "Other Account",
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BankName(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
