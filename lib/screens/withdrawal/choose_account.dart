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
      backgroundColor: const Color(0xFFf1f5ff),
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
              "assets/images/savings_account.gif",
              height: 300,
            ),
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
            child: Image.asset(
              "assets/images/current_account.gif",
              height: 300,
            ),
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
