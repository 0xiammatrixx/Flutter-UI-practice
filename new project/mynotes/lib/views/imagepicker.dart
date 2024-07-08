import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerWidget extends StatefulWidget {
  const ImagePickerWidget({super.key});

  @override
  State<ImagePickerWidget> createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  final ImagePicker _picker = ImagePicker();
  XFile? file;
  List<XFile>? files;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Picker'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 300,
                width: double.infinity,
                color: Colors.grey,
                child: Center(
                    child: file == null
                        ? Text('Image not picked')
                        : Image.file(File(file!.path),fit: BoxFit.cover,)),
              ),
            ),
            ElevatedButton(
                onPressed: () async {
                  final XFile? photo =
                      await _picker.pickImage(source: ImageSource.gallery);
                  setState(() {
                    file = photo;
                  });
                },
                child: const Text('Pick Image'),),

                ElevatedButton(
                onPressed: () async {
                  final List <XFile>? photos =
                      await _picker.pickMultiImage();
                  setState(() {
                    files = photos;
                  });
                },
                child: const Text('Pick Images'))
          ],
        ),
      ),
    );
  }
}
