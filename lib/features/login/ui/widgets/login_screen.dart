import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_clinic/core/theming/styles.dart';
import 'package:online_clinic/core/widgets/app_text_button.dart';
import 'package:online_clinic/core/widgets/app_text_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObsecuretext = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.0.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back',
                  style: TextStyles.font24Blue700Weight,
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: TextStyles.font14Grey400Weight,
                ),
                SizedBox(
                  height: 36.h,
                ),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      const AppTextFormField(hintText: 'Email'),
                      SizedBox(height: 18.h),
                      AppTextFormField(
                        hintText: 'Password',
                        isObscureText: isObsecuretext,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isObsecuretext = !isObsecuretext;
                            });
                          },
                          child: Icon(
                            isObsecuretext
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                      ),
                      SizedBox(height: 24.h),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text(
                          'Forgot Password?',
                          style: TextStyles.font14Blue400Weight,
                        ),
                      ),
                      SizedBox(height: 40.h),
                      AppTextButton(
                        onpressed: () {},
                        text: 'Login',
                      ),
                      /////// rich text, rich span ///////
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
