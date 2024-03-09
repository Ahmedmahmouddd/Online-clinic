import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_clinic/core/theming/colors.dart';
import 'package:online_clinic/core/theming/styles.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? enableBorder;
  final InputBorder? focusedBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backGroundColor;
  const AppTextFormField(
      {super.key,
      required this.hintText,
      this.contentPadding,
      this.enableBorder,
      this.inputTextStyle,
      this.hintStyle,
      this.isObscureText,
      this.suffixIcon,
      this.focusedBorder,
      this.backGroundColor});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: backGroundColor ?? ColorsManager.MoreLightGrey,
        isDense: true,
        hintText: hintText,
        suffixIcon: suffixIcon,
        hintStyle: hintStyle ?? TextStyles.font14LightGrey400Weight,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(color: ColorsManager.Blue)),
        enabledBorder: enableBorder ??
            OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(color: ColorsManager.LighterGray)),
      ),
      obscureText: isObscureText ?? false,
      style: inputTextStyle ?? TextStyles.font14DarkBlue400Weight,
    );
  }
}
