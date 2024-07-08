import 'package:flutter/material.dart';


class ImagePickerWidget extends StatefulWidget {
  const ImagePickerWidget({super.key});

  @override
  State<ImagePickerWidget> createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Container( height: 300,
          color: Colors.grey,
          child: Text('Image not picked'),
        )
      ],),
    );
  }
}