import 'package:flutter/material.dart';
import 'package:online_clinic/core/helpers/extensions.dart';
import 'package:online_clinic/core/routing/routs.dart';
import 'package:online_clinic/core/theming/colors.dart';
import 'package:online_clinic/core/theming/styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(const Size(double.infinity, 52)),
        backgroundColor: MaterialStateProperty.all(ColorsManager.PrimaryBlue),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
      ),
      child: Text(
        'Get Started',
        style: TextStyles.font16White66Weight,
      ),
    );
  }
}
