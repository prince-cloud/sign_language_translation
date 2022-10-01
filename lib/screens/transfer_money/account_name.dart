import 'package:flutter/material.dart';
import 'package:sign_language_detection/components/btn.dart';
import 'package:sign_language_detection/components/keyboard.dart';
import 'package:sign_language_detection/screens/deposit/deposite_amount.dart';
import 'package:sign_language_detection/screens/transfer_money/transfer_amount.dart';

class TransferAccountName extends StatefulWidget {
  final String accountNumber;
  final String bankName;
  const TransferAccountName({
    super.key,
    required this.accountNumber,
    required this.bankName,
  });

  @override
  State<TransferAccountName> createState() => _TransferAccountNameState();
}

class _TransferAccountNameState extends State<TransferAccountName> {
  TextEditingController accountNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black),
      body: ListView(
        children: [
          Center(
            child: Image.asset(
              "assets/images/receipient_account_name.gif",
              height: 300,
            ),
          ),
          const Center(
            child: Text(
              "Enter Account Name below",
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
              controller: accountNameController,
            ),
            trailing: InkWell(
              onTap: () {
                accountNameController.text =
                    accountNameController.text.substring(
                  0,
                  accountNameController.text.length - 1,
                );
              },
              onLongPress: () {
                accountNameController.text = "";
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
                KeyLetter(
                  keyletter: "A",
                  ontap: () {
                    accountNameController.text += "A";
                  },
                ),
                KeyLetter(
                  keyletter: "B",
                  ontap: () {
                    accountNameController.text += "B";
                  },
                ),
                KeyLetter(
                  keyletter: "C",
                  ontap: () {
                    accountNameController.text += "C";
                  },
                ),
                KeyLetter(
                  keyletter: "D",
                  ontap: () {
                    accountNameController.text += "D";
                  },
                ),
                KeyLetter(
                  keyletter: "E",
                  ontap: () {
                    accountNameController.text += "E";
                  },
                ),
                KeyLetter(
                  keyletter: "F",
                  ontap: () {
                    accountNameController.text += "F";
                  },
                ),
                KeyLetter(
                  keyletter: "G",
                  ontap: () {
                    accountNameController.text += "G";
                  },
                ),
                KeyLetter(
                  keyletter: "H",
                  ontap: () {
                    accountNameController.text += "H";
                  },
                ),
                KeyLetter(
                  keyletter: "I",
                  ontap: () {
                    accountNameController.text += "I";
                  },
                ),
                KeyLetter(
                  keyletter: "J",
                  ontap: () {
                    accountNameController.text += "J";
                  },
                ),
                KeyLetter(
                  keyletter: "K",
                  ontap: () {
                    accountNameController.text += "K";
                  },
                ),
                KeyLetter(
                  keyletter: "L",
                  ontap: () {
                    accountNameController.text += "L";
                  },
                ),
                KeyLetter(
                  keyletter: "M",
                  ontap: () {
                    accountNameController.text += "M";
                  },
                ),
                KeyLetter(
                  keyletter: "N",
                  ontap: () {
                    accountNameController.text += "N";
                  },
                ),
                KeyLetter(
                  keyletter: "O",
                  ontap: () {
                    accountNameController.text += "O";
                  },
                ),
                KeyLetter(
                  keyletter: "P",
                  ontap: () {
                    accountNameController.text += "P";
                  },
                ),
                KeyLetter(
                  keyletter: "Q",
                  ontap: () {
                    accountNameController.text += "Q";
                  },
                ),
                KeyLetter(
                  keyletter: "R",
                  ontap: () {
                    accountNameController.text += "R";
                  },
                ),
                KeyLetter(
                  keyletter: "S",
                  ontap: () {
                    accountNameController.text += "S";
                  },
                ),
                KeyLetter(
                  keyletter: "T",
                  ontap: () {
                    accountNameController.text += "T";
                  },
                ),
                KeyLetter(
                  keyletter: "U",
                  ontap: () {
                    accountNameController.text += "U";
                  },
                ),
                KeyLetter(
                  keyletter: "V",
                  ontap: () {
                    accountNameController.text += "V";
                  },
                ),
                KeyLetter(
                  keyletter: "W",
                  ontap: () {
                    accountNameController.text += "W";
                  },
                ),
                KeyLetter(
                  keyletter: "X",
                  ontap: () {
                    accountNameController.text += "X";
                  },
                ),
                KeyLetter(
                  keyletter: "Y",
                  ontap: () {
                    accountNameController.text += "Y";
                  },
                ),
                KeyLetter(
                  keyletter: "Z",
                  ontap: () {
                    accountNameController.text += "Z";
                  },
                ),
                Container(
                  width: 100,
                  height: 60,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Colors.black45,
                    ),
                  ),
                  child: InkWell(
                    onTap: () {
                      accountNameController.text += "  ";
                    },
                    child: const Text("           "),
                  ),
                ),
                const SizedBox(
                  height: 20,
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
                  builder: (context) => TransferAmount(
                    accountNumber: widget.accountNumber,
                    accountName: accountNameController.text,
                    accountType: "other",
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
