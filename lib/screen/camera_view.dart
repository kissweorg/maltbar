import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

class CameraView extends ConsumerWidget {
  final ImagePicker _picker = ImagePicker();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FutureBuilder(
      future: _picker.pickImage(source: ImageSource.gallery),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (!snapshot.hasData) {
          return Center(child: CircularProgressIndicator.adaptive());
        } else if (snapshot.hasError) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Error: ${snapshot.error}',
              style: TextStyle(fontSize: 15),
            ),
          );
        } else {
          return FutureBuilder(
            future: snapshot.data.readAsBytes(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return Center(child: CircularProgressIndicator.adaptive());
              } else if (snapshot.hasError) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Error: ${snapshot.error}',
                    style: TextStyle(fontSize: 15),
                  ),
                );
              } else {
                return Image.memory(snapshot.data as Uint8List);
              }
            },
          );
        }
      },
    );
  }
}
