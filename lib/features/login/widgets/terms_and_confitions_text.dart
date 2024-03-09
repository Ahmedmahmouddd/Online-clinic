import 'package:flutter/material.dart';
import 'package:online_clinic/core/theming/styles.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(children: [
        TextSpan(
            text: 'By logging, you are agreeing to our ',
            style: TextStyles.font14Grey400Weight),
        TextSpan(
            text: 'Terms & Conditions',
            style: TextStyles.font14DarkBlue600Weight),
        TextSpan(
            text: 'and ',
            style: TextStyles.font14Grey400Weight.copyWith(height: 1.5)),
        TextSpan(
            text: 'Privacy Policy', style: TextStyles.font14DarkBlue600Weight),
      ]),
    );
  }
}
