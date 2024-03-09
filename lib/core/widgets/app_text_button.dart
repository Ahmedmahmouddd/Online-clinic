import 'package:flutter/material.dart';
import 'package:online_clinic/core/theming/colors.dart';
import 'package:online_clinic/core/theming/styles.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({super.key, required this.onpressed, required this.text});
  final VoidCallback onpressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onpressed,
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(const Size(double.infinity, 52)),
        backgroundColor: MaterialStateProperty.all(ColorsManager.Blue),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
      ),
      child: Text(
        text,
        style: TextStyles.font16White600Weight,
      ),
    );
  }
}
