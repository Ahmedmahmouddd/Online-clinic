import 'package:flutter/material.dart';
import 'package:online_clinic/core/theming/styles.dart';

class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
            text: 'Don\'t have an account? ',
            style: TextStyles.font14Grey400Weight),
        TextSpan(text: 'Sign Up', style: TextStyles.font14Blue600Weight)
      ]),
    );
  }
}
