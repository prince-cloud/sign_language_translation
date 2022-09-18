import 'package:flutter/material.dart';
import 'package:sign_language_detection/components/keyboard.dart';
import 'package:sign_language_detection/screens/transactions.dart';

class AccountName extends StatefulWidget {
  final String accountNumber;
  const AccountName({Key? key, required this.accountNumber}) : super(key: key);

  @override
  State<AccountName> createState() => _AccountNameState();
}

class _AccountNameState extends State<AccountName> {
  TextEditingController accountNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf1f5ff),
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          Center(
            child: Image.asset("assets/images/conversation.png"),
          ),
          /* BetterPlayer.network(
              widget.product.video,
              betterPlayerConfiguration: BetterPlayerConfiguration(
                aspectRatio: 16 / 9,
                looping: false,
                autoPlay: false,
                fit: BoxFit.contain,
              ),
            ), */
          const SizedBox(
            height: 15,
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
                    builder: (context) => Transactions(
                      accountNumber: widget.accountNumber,
                      accountName: accountNameController.text,
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
