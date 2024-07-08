import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class ImagePickerWidget extends StatefulWidget {
  const ImagePickerWidget({super.key});

  @override
  State<ImagePickerWidget> createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  XFile? file;
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
              child: Container( height: 300,
              width: double.infinity,
                color: Colors.grey,
                child: const Center(child: Text('Image not picked')),
              ),
            ),
            ElevatedButton(onPressed: (){

            }, child: const Text('Pick Image'))
          ],),
      ),
    );
  }
}