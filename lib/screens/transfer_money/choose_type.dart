import 'package:flutter/material.dart';
import 'package:sign_language_detection/components/card.dart';
import 'package:sign_language_detection/screens/deposit/deposite_amount.dart';
import 'package:sign_language_detection/screens/deposit/other_account_bank_name.dart';
import 'package:sign_language_detection/screens/transfer_money/account_number.dart';
import 'package:sign_language_detection/screens/transfer_money/other_bank_name.dart';

class ChooseTransferMoneyType extends StatefulWidget {
  final String accountNumber;
  final String accountName;
  const ChooseTransferMoneyType(
      {super.key, required this.accountNumber, required this.accountName});

  @override
  State<ChooseTransferMoneyType> createState() =>
      _ChooseTransferMoneyTypeState();
}

class _ChooseTransferMoneyTypeState extends State<ChooseTransferMoneyType> {
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
            child: Image.asset(
              "assets/images/same_account.gif",
              height: 300,
            ),
          ),
          CustomCard(
            text: "Same Bank",
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AccountNumber(
                    //accountType: "samebank",
                    //accountNumber: widget.accountNumber,
                    //accountName: widget.accountName,
                    bankName: '',
                  ),
                ),
              );
            },
          ),
          Center(
            child: Image.asset(
              "assets/images/other_account.gif",
              height: 300,
            ),
          ),
          CustomCard(
            text: "Other Bank",
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TransferBankName(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
