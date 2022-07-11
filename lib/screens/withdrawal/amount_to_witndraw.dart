import 'package:flutter/material.dart';
import 'package:sign_language_detection/components/keyboard.dart';
import 'package:sign_language_detection/screens/withdrawal/summary.dart';

class AmountToWithDraw extends StatefulWidget {
  final String accountType;
  final String accountNumber;
  final String accountName;
  const AmountToWithDraw({
    Key? key,
    required this.accountType,
    required this.accountNumber,
    required this.accountName,
  }) : super(key: key);

  @override
  State<AmountToWithDraw> createState() => _AmountToWithDrawState();
}

class _AmountToWithDrawState extends State<AmountToWithDraw> {
  TextEditingController amountController = TextEditingController();
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
          Center(
            child: Image.asset("assets/images/conversation.png"),
          ),
          const SizedBox(
            height: 15,
          ),
          const Center(
            child: Text(
              "Enter withdrawal amount below.",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
          ),
          ListTile(
            leading: const Text("GHc"),
            title: TextFormField(
              keyboardType: TextInputType.multiline,
              minLines: 1,
              maxLines: 4,
              //enabled: false,
              showCursor: true,
              readOnly: true,
              controller: amountController,
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
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WithdrawalSummary(
                      accountType: widget.accountType,
                      accountNumber: widget.accountNumber,
                      accountName: widget.accountName,
                      amount: amountController.text,
                    ),
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black,
                ),
                child: SizedBox(
                  width: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text(
                        "Continue",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          //fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.arrow_right_alt,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
