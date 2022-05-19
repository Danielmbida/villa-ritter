import 'dart:io';
// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';

class ImageProfilForm extends StatelessWidget {
  const ImageProfilForm({
    Key? key,
    this.pickedImageFile,
  }) : super(key: key);

  final File? pickedImageFile;

  @override
  Widget build(BuildContext context) {
    final double mediaHeight = MediaQuery.of(context).size.height;
    const IconData addImgIcon = Icons.person;
    const Color addImgColorIcon = Colors.white;
    final addImgSizeIcon = mediaHeight * 0.15;
    final double radiusCircle = mediaHeight * 0.08;
    final Color? circleColor = Colors.grey[300];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child:
          Column(
        children: [
          Stack(
            children: [
              if (pickedImageFile != null)
                CircleAvatar(
                  radius: radiusCircle,
                  child: CircleAvatar(
                    radius: radiusCircle - 2,
                    backgroundImage: FileImage(
                      pickedImageFile!,
                    ),
                  ),
                )
              else
                CircleAvatar(
                  radius: radiusCircle,
                  backgroundColor: circleColor,
                  child: CircleAvatar(
                    radius: radiusCircle,
                    backgroundColor: circleColor,
                    child: Icon(
                      addImgIcon,
                      size: addImgSizeIcon,
                      color: addImgColorIcon,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
