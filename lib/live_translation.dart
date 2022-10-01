import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tflite/tflite.dart';
//import 'package:tflite/tflite.dart';
import 'package:tflite_flutter/tflite_flutter.dart';

class LiveTranslation extends StatefulWidget {
  const LiveTranslation({super.key});

  @override
  State<LiveTranslation> createState() => _LiveTranslationState();
}

class _LiveTranslationState extends State<LiveTranslation> {
  late File _image;
  late List _results;
  bool _imageSelect = false;

  XFile? imageXFile;
  final ImagePicker _picker = ImagePicker();

  Future<void> _getImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? pickedFile = await _picker.pickImage(
      source: ImageSource.camera,
    );
    File image = File(pickedFile!.path);
    imageClassification(image);
  }

  void initState() {
    super.initState();
    loadModel();
  }

  Future loadModel() async {
    Tflite.close();
    String results;
    //final results = await (Interpreter.fromAsset('your_model.tflite'))!;
    results = results = (await Tflite.loadModel(
      model: "assets/model/model_unquant.tflite",
      labels: "assets/model/labels.txt",
    ))!;
    print("======== model Status: $results");
  }

  Future imageClassification(File image) async {
    var recognitions = await Tflite.runModelOnImage(
      path: image.path,
      numResults: 6,
      threshold: 0.05,
      imageMean: 127.5,
      imageStd: 127.5,
    );

    setState(
      () {
        _results = recognitions!;
        _image = image;
        _imageSelect = true;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          IconButton(
            onPressed: () {
              _getImage();
            },
            icon: const Icon(Icons.camera),
          ),
          const Center(
            child: Text("Open Camera"),
          ),
          const SizedBox(
            height: 25,
          ),
          _imageSelect == true
              ? Container(
                  child: Center(child: Image.file(_image)),
                )
              : const Center(
                  child: Text(
                    "No image uploaded",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
          SingleChildScrollView(
            child: Column(
              children: (_imageSelect)
                  ? _results.map(
                      (result) {
                        return Card(
                          child: Container(
                            padding: const EdgeInsets.all(15),
                            child: Text(
                              "${result['label']} - ${result['confidence'].toString()}",
                              style: const TextStyle(
                                fontSize: 20,
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        );
                      },
                    ).toList()
                  : [],
            ),
          )
        ],
      ),
    );
  }
}
