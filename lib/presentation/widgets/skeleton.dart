import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/configs/color_config.dart';

class Skeleton extends StatelessWidget {
  final double? width;
  final double? height;
  const Skeleton({Key? key, this.width, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
      ),
      height: height,
      width: width,
    );
  }
}
