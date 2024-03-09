import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_clinic/core/theming/styles.dart';
import 'package:online_clinic/features/onboarding/widgets/doc_logo_and_name.dart';
import 'package:online_clinic/features/onboarding/widgets/doctor_image_and_text.dart';
import 'package:online_clinic/features/onboarding/widgets/get_started_button.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
          child: Column(
            children: [
              const DocLogoAndName(),
              SizedBox(
                height: 10.h,
              ),
              const DoctorImageAndText(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Column(
                  children: [
                    Text(
                      'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                      style: TextStyles.font14Grey400Weight,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    const GetStartedButton()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
