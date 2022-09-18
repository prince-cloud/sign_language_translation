import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sign_language_detection/components/keyboard.dart';
import 'package:sign_language_detection/screens/withdrawal/account_name.dart';
import 'package:video_player/video_player.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  XFile? imageXFile;
  final ImagePicker _picker = ImagePicker();

  Future<void> _getImage() async {
    imageXFile = await _picker.pickImage(source: ImageSource.camera);
    setState(
      () {
        imageXFile;
      },
    );
  }

  TextEditingController accountNumberController = TextEditingController();
  late VideoPlayerController _controller;
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/Butterfly-209.mp4');

    _controller.addListener(() {
      setState(() {});
    });
    _controller.setLooping(true);
    _controller.initialize().then((_) => setState(() {}));
    _controller.play();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: const Color(0xFFf1f5ff),
      body: ListView(
        children: [
          Center(
            child: Image.asset("assets/images/account_number.gif"),
          ),
          const Center(
            child: Text(
              "Enter Account Number below",
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
                    builder: (context) => AccountName(
                      accountNumber: accountNumberController.text,
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
