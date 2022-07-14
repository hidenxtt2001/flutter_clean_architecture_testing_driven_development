import 'package:flutter/material.dart';

extension ImageExtension on String {
  Image getImage({BoxFit? fit}) {
    return Image.asset(
      'assets/images/${this}.png',
      fit: fit,
    );
  }
}

extension SpaceExtension on num {
  Widget get verticalSpace => SizedBox(height: toDouble());

  Widget get horizontalSpace => SizedBox(width: toDouble());
}
