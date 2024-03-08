import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_clinic/core/theming/colors.dart';

class TextStyles {
  static TextStyle font24Black700Weight = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );

  static TextStyle font32BlueBold = TextStyle(
    color: ColorsManager.PrimaryBlue,
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
  );

  static TextStyle font14GreyRegular = TextStyle(
    color: ColorsManager.PrimaryGray,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle font16White66Weight = TextStyle(
    color: Colors.white,
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
  );
}
