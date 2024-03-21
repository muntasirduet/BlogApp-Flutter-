import 'dart:io';

import 'package:image_picker/image_picker.dart';

Future<File?> pickImage() async {
  print('asasaskaslkadskads');
  try {
    final xFile = await ImagePicker().pickImage(
      source: ImageSource.camera,
    );
    print('xile');
    if (xFile != null) {
      return File(xFile.path);
    }
    return null;
  } catch (e) {
    return null;
  }
}
