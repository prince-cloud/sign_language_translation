import 'package:flutter/material.dart';
import 'package:sign_language_detection/components/btn.dart';
import 'package:sign_language_detection/components/keyboard.dart';
import 'package:sign_language_detection/screens/transfer_money/account_number.dart';

class TransferBankName extends StatefulWidget {
  const TransferBankName({super.key});

  @override
  State<TransferBankName> createState() => _TransferBankNameState();
}

class _TransferBankNameState extends State<TransferBankName> {
  TextEditingController bankNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          Center(
            child: Image.asset(
              "assets/images/account_name.gif",
              height: 300,
            ),
          ),
          const Center(
            child: Text(
              "Enter Bank Name below",
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
              controller: bankNameController,
            ),
            trailing: InkWell(
              onTap: () {
                bankNameController.text = bankNameController.text.substring(
                  0,
                  bankNameController.text.length - 1,
                );
              },
              onLongPress: () {
                bankNameController.text = "";
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
                    bankNameController.text += "A";
                  },
                ),
                KeyLetter(
                  keyletter: "B",
                  ontap: () {
                    bankNameController.text += "B";
                  },
                ),
                KeyLetter(
                  keyletter: "C",
                  ontap: () {
                    bankNameController.text += "C";
                  },
                ),
                KeyLetter(
                  keyletter: "D",
                  ontap: () {
                    bankNameController.text += "D";
                  },
                ),
                KeyLetter(
                  keyletter: "E",
                  ontap: () {
                    bankNameController.text += "E";
                  },
                ),
                KeyLetter(
                  keyletter: "F",
                  ontap: () {
                    bankNameController.text += "F";
                  },
                ),
                KeyLetter(
                  keyletter: "G",
                  ontap: () {
                    bankNameController.text += "G";
                  },
                ),
                KeyLetter(
                  keyletter: "H",
                  ontap: () {
                    bankNameController.text += "H";
                  },
                ),
                KeyLetter(
                  keyletter: "I",
                  ontap: () {
                    bankNameController.text += "I";
                  },
                ),
                KeyLetter(
                  keyletter: "J",
                  ontap: () {
                    bankNameController.text += "J";
                  },
                ),
                KeyLetter(
                  keyletter: "K",
                  ontap: () {
                    bankNameController.text += "K";
                  },
                ),
                KeyLetter(
                  keyletter: "L",
                  ontap: () {
                    bankNameController.text += "L";
                  },
                ),
                KeyLetter(
                  keyletter: "M",
                  ontap: () {
                    bankNameController.text += "M";
                  },
                ),
                KeyLetter(
                  keyletter: "N",
                  ontap: () {
                    bankNameController.text += "N";
                  },
                ),
                KeyLetter(
                  keyletter: "O",
                  ontap: () {
                    bankNameController.text += "O";
                  },
                ),
                KeyLetter(
                  keyletter: "P",
                  ontap: () {
                    bankNameController.text += "P";
                  },
                ),
                KeyLetter(
                  keyletter: "Q",
                  ontap: () {
                    bankNameController.text += "Q";
                  },
                ),
                KeyLetter(
                  keyletter: "R",
                  ontap: () {
                    bankNameController.text += "R";
                  },
                ),
                KeyLetter(
                  keyletter: "S",
                  ontap: () {
                    bankNameController.text += "S";
                  },
                ),
                KeyLetter(
                  keyletter: "T",
                  ontap: () {
                    bankNameController.text += "T";
                  },
                ),
                KeyLetter(
                  keyletter: "U",
                  ontap: () {
                    bankNameController.text += "U";
                  },
                ),
                KeyLetter(
                  keyletter: "V",
                  ontap: () {
                    bankNameController.text += "V";
                  },
                ),
                KeyLetter(
                  keyletter: "W",
                  ontap: () {
                    bankNameController.text += "W";
                  },
                ),
                KeyLetter(
                  keyletter: "X",
                  ontap: () {
                    bankNameController.text += "X";
                  },
                ),
                KeyLetter(
                  keyletter: "Y",
                  ontap: () {
                    bankNameController.text += "Y";
                  },
                ),
                KeyLetter(
                  keyletter: "Z",
                  ontap: () {
                    bankNameController.text += "Z";
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
                      bankNameController.text += "  ";
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
                  builder: (context) => AccountNumber(
                    bankName: bankNameController.text,
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
