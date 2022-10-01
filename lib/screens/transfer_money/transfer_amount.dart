import 'package:flutter/material.dart';
import 'package:sign_language_detection/components/btn.dart';
import 'package:sign_language_detection/components/keyboard.dart';
import 'package:sign_language_detection/screens/deposit/deposit_summary.dart';
import 'package:sign_language_detection/screens/transfer_money/transfer_summary.dart';

class TransferAmount extends StatefulWidget {
  final String accountNumber;
  final String accountName;
  final String? bankName;
  final String accountType;

  const TransferAmount({
    super.key,
    required this.accountNumber,
    required this.accountName,
    required this.accountType,
    required this.bankName,
  });

  @override
  State<TransferAmount> createState() => _TransferAmountState();
}

class _TransferAmountState extends State<TransferAmount> {
  TextEditingController amountController = TextEditingController();
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
          const SizedBox(
            height: 15,
          ),
          Center(
            child: Image.asset(
              "assets/images/enter_amount.gif",
              height: 300,
            ),
          ),
          const Center(
            child: Text(
              "Enter Amount",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
          ),
          ListTile(
            title: TextFormField(
              keyboardType: TextInputType.multiline,
              minLines: 1,
              maxLines: 4,
              //enabled: false,
              showCursor: true,
              readOnly: true,
              controller: amountController,
              decoration: const InputDecoration(prefix: Text("GHC ")),
            ),
            trailing: InkWell(
              onTap: () {
                amountController.text = amountController.text.substring(
                  0,
                  amountController.text.length - 1,
                );
              },
              onLongPress: () {
                amountController.text = "";
              },
              child: const Icon(
                Icons.arrow_back,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Wrap(
              children: [
                KeyNumeric(
                  keyNumber: "1",
                  ontap: () {
                    amountController.text += "1";
                  },
                ),
                KeyNumeric(
                  keyNumber: "2",
                  ontap: () {
                    amountController.text += "2";
                  },
                ),
                KeyNumeric(
                  keyNumber: "3",
                  ontap: () {
                    amountController.text += "3";
                  },
                ),
                KeyNumeric(
                  keyNumber: "4",
                  ontap: () {
                    amountController.text += "4";
                  },
                ),
                KeyNumeric(
                  keyNumber: "5",
                  ontap: () {
                    amountController.text += "5";
                  },
                ),
                KeyNumeric(
                  keyNumber: "6",
                  ontap: () {
                    amountController.text += "6";
                  },
                ),
                KeyNumeric(
                  keyNumber: "7",
                  ontap: () {
                    amountController.text += "7";
                  },
                ),
                KeyNumeric(
                  keyNumber: "8",
                  ontap: () {
                    amountController.text += "8";
                  },
                ),
                KeyNumeric(
                  keyNumber: "9",
                  ontap: () {
                    amountController.text += "9";
                  },
                ),
                KeyNumeric(
                  keyNumber: "0",
                  ontap: () {
                    amountController.text += "0";
                  },
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          CustomBtn(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TransferSummary(
                    accountNumber: widget.accountNumber,
                    accountName: widget.accountName,
                    transferAmount: amountController.text,
                    bankName: widget.bankName,
                    accountType: widget.accountType,
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
