import 'package:flutter/material.dart';
import 'package:sign_language_detection/components/card.dart';
import 'package:sign_language_detection/screens/bank_statement/start_date.dart';
import 'package:sign_language_detection/screens/deposit/choose_type.dart';
import 'package:sign_language_detection/screens/deposit/deposite_amount.dart';
import 'package:sign_language_detection/screens/transfer_money/choose_type.dart';
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
      backgroundColor: const Color(0xFFf1f5ff),
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          const Center(
            child: Text(
              "Select Transaction Type",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Image.asset(
              "assets/images/name_of_bank.gif",
              height: 200,
            ),
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
            child: Image.asset(
              "assets/images/deposit.gif",
              height: 200,
            ),
          ),
          CustomCard(
            text: "Deposit",
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChooseDepositType(
                    accountNumber: widget.accountNumber,
                    accountName: widget.accountName,
                  ),
                ),
              );
            },
          ),
          Center(
            child: Image.asset(
              "assets/images/transfer_money.gif",
              height: 200,
            ),
          ),
          CustomCard(
            text: "Transfer Money",
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChooseTransferMoneyType(
                    accountNumber: widget.accountNumber,
                    accountName: widget.accountName,
                  ),
                ),
              );
            },
          ),
          Center(
            child: Image.asset(
              "assets/images/other_account.gif",
              height: 200,
            ),
          ),
          CustomCard(
            text: "Bank Statement",
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const StartDate(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
