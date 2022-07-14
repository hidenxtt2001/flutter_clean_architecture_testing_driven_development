import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/presentation/widgets/skeleton.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WeatherInfoSkeleton extends StatelessWidget {
  const WeatherInfoSkeleton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Skeleton(
          width: 0.2.sw,
          height: 50.h,
        ),
        10.w.verticalSpace,
        Skeleton(
          width: 50.w,
          height: 15.h,
        ),
        10.w.verticalSpace,
        Skeleton(
          width: 60.w,
          height: 15.h,
        ),
        10.w.verticalSpace,
        Skeleton(
          width: 70.w,
          height: 35.h,
        ),
      ],
    );
  }
}
