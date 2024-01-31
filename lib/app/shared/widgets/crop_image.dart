// ignore_for_file: use_build_context_synchronously

import 'dart:io';
import 'dart:typed_data';

import 'package:custom_image_crop/custom_image_crop.dart';
import 'package:flutter/material.dart';
import 'package:miwmew_app/app/shared/utils/colors.dart';
import 'package:miwmew_app/app/shared/utils/text_style.dart';
import 'package:miwmew_app/app/shared/widgets/back_button.dart';
import 'package:path_provider/path_provider.dart';

class CropImageScreen extends StatefulWidget {
  final String filePath;
  final CustomImageCropController cropController;
  final CustomCropShape currentShape;

  const CropImageScreen({
    Key? key,
    required this.filePath,
    required this.cropController,
    required this.currentShape,
  }) : super(key: key);

  @override
  _CropImageScreenState createState() => _CropImageScreenState();
}

class _CropImageScreenState extends State<CropImageScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    widget.cropController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: QBackButton(),
        ),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.brush),
            SizedBox(
              width: 10.0,
            ),
            Icon(Icons.music_note_outlined),
          ],
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: InkWell(
              onTap: () async {
                MemoryImage? result = await widget.cropController.onCropImage();
                if (result != null) {
                  Uint8List bytes = result.bytes;
                  File tempFile = File(
                    '${(await getTemporaryDirectory()).path}/cropped_image.jpg',
                  );
                  await tempFile.writeAsBytes(bytes);
                  Navigator.pop<File?>(context, tempFile);
                } else {
                  Navigator.pop<File?>(context);
                }
              },
              child: Text(
                'Next',
                style: AppText.regulerText.copyWith(
                  fontSize: 14,
                  color: AppColors.kBlueColor,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: CustomImageCrop(
            shape: widget.currentShape,
            image: FileImage(File(widget.filePath)),
            cropController: widget.cropController),
      ),
    );
  }
}
