import 'package:flutter/material.dart';
import 'package:sign_language_detection/components/keyboard.dart';

class WithDrawal extends StatefulWidget {
  const WithDrawal({Key? key}) : super(key: key);

  @override
  State<WithDrawal> createState() => _WithDrawalState();
}

class _WithDrawalState extends State<WithDrawal> {
  TextEditingController textController = TextEditingController();

  List<TextEditingController> inputText = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          ListTile(
            title: TextFormField(
              keyboardType: TextInputType.multiline,
              minLines: 1,
              maxLines: 4,
              //enabled: false,
              showCursor: true,
              readOnly: true,
              controller: textController,
            ),
            trailing: InkWell(
              onTap: () {
                textController.text = textController.text.substring(
                  0,
                  textController.text.length - 1,
                );
              },
              onLongPress: () {
                textController.text = "";
              },
              child: const Icon(
                Icons.arrow_back,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Wrap(
            children: [
              KeyNumeric(
                keyNumber: "1",
                ontap: () {
                  textController.text += "1";
                },
              ),
              KeyNumeric(
                keyNumber: "2",
                ontap: () {
                  textController.text += "2";
                },
              ),
              KeyNumeric(
                keyNumber: "3",
                ontap: () {
                  textController.text += "3";
                },
              ),
              KeyNumeric(
                keyNumber: "4",
                ontap: () {
                  textController.text += "4";
                },
              ),
              KeyNumeric(
                keyNumber: "5",
                ontap: () {
                  textController.text += "5";
                },
              ),
              KeyNumeric(
                keyNumber: "6",
                ontap: () {
                  textController.text += "6";
                },
              ),
              KeyNumeric(
                keyNumber: "7",
                ontap: () {
                  textController.text += "7";
                },
              ),
              KeyNumeric(
                keyNumber: "8",
                ontap: () {
                  textController.text += "8";
                },
              ),
              KeyNumeric(
                keyNumber: "9",
                ontap: () {
                  textController.text += "9";
                },
              ),
              KeyNumeric(
                keyNumber: "0",
                ontap: () {
                  textController.text += "0";
                },
              ),
            ],
          ),
          Wrap(
            children: [
              KeyLetter(
                keyletter: "A",
                ontap: () {
                  textController.text += "A";
                },
              ),
              KeyLetter(
                keyletter: "B",
                ontap: () {
                  textController.text += "B";
                },
              ),
              KeyLetter(
                keyletter: "C",
                ontap: () {
                  textController.text += "C";
                },
              ),
              KeyLetter(
                keyletter: "D",
                ontap: () {
                  textController.text += "D";
                },
              ),
              KeyLetter(
                keyletter: "E",
                ontap: () {
                  textController.text += "E";
                },
              ),
              KeyLetter(
                keyletter: "F",
                ontap: () {
                  textController.text += "F";
                },
              ),
              KeyLetter(
                keyletter: "G",
                ontap: () {
                  textController.text += "G";
                },
              ),
              KeyLetter(
                keyletter: "H",
                ontap: () {
                  textController.text += "H";
                },
              ),
              KeyLetter(
                keyletter: "I",
                ontap: () {
                  textController.text += "I";
                },
              ),
              KeyLetter(
                keyletter: "J",
                ontap: () {
                  textController.text += "J";
                },
              ),
              KeyLetter(
                keyletter: "K",
                ontap: () {
                  textController.text += "K";
                },
              ),
              KeyLetter(
                keyletter: "L",
                ontap: () {
                  textController.text += "L";
                },
              ),
              KeyLetter(
                keyletter: "M",
                ontap: () {
                  textController.text += "M";
                },
              ),
              KeyLetter(
                keyletter: "N",
                ontap: () {
                  textController.text += "N";
                },
              ),
              KeyLetter(
                keyletter: "O",
                ontap: () {
                  textController.text += "O";
                },
              ),
              KeyLetter(
                keyletter: "P",
                ontap: () {
                  textController.text += "P";
                },
              ),
              KeyLetter(
                keyletter: "Q",
                ontap: () {
                  textController.text += "Q";
                },
              ),
              KeyLetter(
                keyletter: "R",
                ontap: () {
                  textController.text += "R";
                },
              ),
              KeyLetter(
                keyletter: "S",
                ontap: () {
                  textController.text += "S";
                },
              ),
              KeyLetter(
                keyletter: "T",
                ontap: () {
                  textController.text += "T";
                },
              ),
              KeyLetter(
                keyletter: "U",
                ontap: () {
                  textController.text += "U";
                },
              ),
              KeyLetter(
                keyletter: "V",
                ontap: () {
                  textController.text += "V";
                },
              ),
              KeyLetter(
                keyletter: "W",
                ontap: () {
                  textController.text += "W";
                },
              ),
              KeyLetter(
                keyletter: "X",
                ontap: () {
                  textController.text += "X";
                },
              ),
              KeyLetter(
                keyletter: "Y",
                ontap: () {
                  textController.text += "Y";
                },
              ),
              KeyLetter(
                keyletter: "Z",
                ontap: () {
                  textController.text += "Z";
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
                    textController.text += "  ";
                  },
                  child: const Text("           "),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.6,
            child: InkWell(
              onTap: () {},
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
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
