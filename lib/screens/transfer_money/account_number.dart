import 'package:flutter/material.dart';
import 'package:sign_language_detection/components/btn.dart';
import 'package:sign_language_detection/components/keyboard.dart';
import 'package:sign_language_detection/screens/deposit/other_account_name.dart';
import 'package:sign_language_detection/screens/transfer_money/account_name.dart';
import 'package:sign_language_detection/screens/withdrawal/account_name.dart';

class AccountNumber extends StatefulWidget {
  //final String accountNumber;
  //final String accountName;
  final String bankName;

  const AccountNumber(
      {super.key,
      //required this.accountNumber,
      //required this.accountName,
      required this.bankName});

  @override
  State<AccountNumber> createState() => _AccountNumberState();
}

class _AccountNumberState extends State<AccountNumber> {
  TextEditingController accountNumberController = TextEditingController();

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
          Center(
            child: Image.asset(
              "assets/images/account_number.gif",
              height: 300,
            ),
          ),
          const Center(
            child: Text(
              "Enter Account Number",
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
              controller: accountNumberController,
              //decoration: const InputDecoration(prefix: Text("GHC ")),
            ),
            trailing: InkWell(
              onTap: () {
                accountNumberController.text =
                    accountNumberController.text.substring(
                  0,
                  accountNumberController.text.length - 1,
                );
              },
              onLongPress: () {
                accountNumberController.text = "";
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
                    accountNumberController.text += "1";
                  },
                ),
                KeyNumeric(
                  keyNumber: "2",
                  ontap: () {
                    accountNumberController.text += "2";
                  },
                ),
                KeyNumeric(
                  keyNumber: "3",
                  ontap: () {
                    accountNumberController.text += "3";
                  },
                ),
                KeyNumeric(
                  keyNumber: "4",
                  ontap: () {
                    accountNumberController.text += "4";
                  },
                ),
                KeyNumeric(
                  keyNumber: "5",
                  ontap: () {
                    accountNumberController.text += "5";
                  },
                ),
                KeyNumeric(
                  keyNumber: "6",
                  ontap: () {
                    accountNumberController.text += "6";
                  },
                ),
                KeyNumeric(
                  keyNumber: "7",
                  ontap: () {
                    accountNumberController.text += "7";
                  },
                ),
                KeyNumeric(
                  keyNumber: "8",
                  ontap: () {
                    accountNumberController.text += "8";
                  },
                ),
                KeyNumeric(
                  keyNumber: "9",
                  ontap: () {
                    accountNumberController.text += "9";
                  },
                ),
                KeyNumeric(
                  keyNumber: "0",
                  ontap: () {
                    accountNumberController.text += "0";
                  },
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          CustomBtn(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TransferAccountName(
                    accountNumber: accountNumberController.text,
                    bankName: widget.bankName,
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
