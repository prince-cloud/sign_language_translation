import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sign_language_detection/screens/live_translation.dart';
import 'package:sign_language_detection/screens/homepage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  XFile? imageXFile;
  final ImagePicker _picker = ImagePicker();
  Future<void> _getImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? pickedFile = await _picker.pickImage(
      source: ImageSource.camera,
    );
    File image = File(pickedFile!.path);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf1f5ff),
      body: ListView(
        children: [
          Center(
            child: Image.asset("assets/images/conversation.png"),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Welcome!",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
                /* const Text(
                  "Bank system for the deaf.",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ), */
                const SizedBox(
                  height: 30,
                ),
                /* Row(
                  children: const [
                    Icon(
                      Icons.camera_alt,
                      color: Colors.teal,
                      size: 50,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    SizedBox(
                      width: 250,
                      child: Text(
                        "Use your device camera to detect signs",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.teal,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ), */
                /* Row(
                  children: const [
                    Icon(
                      Icons.text_format,
                      color: Colors.teal,
                      size: 50,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    SizedBox(
                      width: 250,
                      child: Text(
                        "Convert sign to text",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.teal,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ), */
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  thickness: 2,
                  color: Colors.black38,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      "Live Translation",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () {
                        _getImage();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Row(
                              children: const [
                                Icon(
                                  Icons.close,
                                  color: Colors.red,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text("Sorry, an error occured")
                              ],
                            ),
                          ),
                        );
                        //Navigator.push(
                        //  context,
                        //  MaterialPageRoute(
                        //    builder: (context) => const LiveTranslation(),
                        //  ),
                        //);
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
                        child: const Icon(
                          Icons.arrow_right_alt,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      "Offline",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
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
                        child: const Icon(
                          Icons.arrow_right_alt,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
