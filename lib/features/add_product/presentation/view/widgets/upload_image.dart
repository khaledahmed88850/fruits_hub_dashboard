import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:skeletonizer/skeletonizer.dart';

class UploadImage extends StatefulWidget {
  const UploadImage({
    super.key,
  });

  @override
  State<UploadImage> createState() => _UploadImageState();
}

class _UploadImageState extends State<UploadImage> {
  bool isLoading = false;
  XFile? image;
  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: isLoading,
      child: Container(
        height: 200,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color.fromARGB(90, 213, 210, 210),
        ),
        child: IconButton(
            onPressed: () async {
              isLoading = true;
              final ImagePicker picker = ImagePicker();
              image = await picker.pickImage(source: ImageSource.gallery);
              setState(() {
                
              });
              isLoading = false;
            },
            icon: image == null
                ? const Icon(
                    Icons.image_outlined,
                    size: 80,
                  )
                : Image.file(
                    File(image!.path),
                  )),
      ),
    );
  }
}
