import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color_config.dart';

class TextConfig {
  static TextStyle kHeader1Secondary = TextStyle(
    color: ColorConfig.kSecondary,
    fontSize: 30.sp,
    fontWeight: FontWeight.bold,
  );

  static TextStyle kBodySecondary = TextStyle(
    color: ColorConfig.kSecondary,
    fontSize: 13.sp,
    fontWeight: FontWeight.normal,
  );

  static TextStyle kBodyAccent = TextStyle(
    color: ColorConfig.kAccent,
    fontSize: 10.sp,
    fontWeight: FontWeight.normal,
  );
}
