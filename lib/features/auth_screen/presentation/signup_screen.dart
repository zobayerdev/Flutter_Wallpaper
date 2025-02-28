import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallpaper_hub/assets_helper/app_colors.dart';
import 'package:wallpaper_hub/assets_helper/app_fonts.dart';
import 'package:wallpaper_hub/assets_helper/app_icons.dart';
import 'package:wallpaper_hub/assets_helper/app_images.dart';
import 'package:wallpaper_hub/common_widgets/custom_button.dart';
import 'package:wallpaper_hub/common_widgets/custom_text_field.dart';
import 'package:wallpaper_hub/helpers/navigation_service.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity, // Ensure the container takes the full width
        height: double.infinity, // Ensure the container takes the full height
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft, // Start from bottom-left
            end: Alignment.topRight, // End at top-right
            colors: [
              AppColors.gradiant_two,
              AppColors.gradiant_one // Set the second color
            ],
            stops: [
              0.0,
              1.0
            ], // Optional: to control the transition between colors
          ),
        ),
        child: SizedBox(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 100, left: 20, right: 20),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppImages.logo,
                      height: 100,
                      width: 100,
                    ),
                    Text(
                      'Wallscape',
                      style: TextFontStyle.textStyle17w600Poppins.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Discover Premium Wallpapers',
                      style: TextFontStyle.textStyle13w600Poppins.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.white,
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColors.cE8EBED,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Create Account',
                                style: TextFontStyle.textStyle18w600Poppins
                                    .copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.blackColor,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Email',
                                style: TextFontStyle.textStyle13w500Poppins
                                    .copyWith(
                                  color: AppColors.c4B5563,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          CustomTextfield(
                            hintText: 'Enter Your Email',
                            inputType: TextInputType.emailAddress,
                            fillColor: AppColors.cF9FAFB,
                            borderColor: AppColors.cF9FAFB,
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: SvgPicture.asset(
                                AppIcons.emailSvg,
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Password',
                                style: TextFontStyle.textStyle13w500Poppins
                                    .copyWith(
                                  color: AppColors.c4B5563,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          CustomTextfield(
                            hintText: 'Create a password',
                            inputType: TextInputType.emailAddress,
                            fillColor: AppColors.cF9FAFB,
                            borderColor: AppColors.cF9FAFB,
                            isObsecure: true,
                            suffixIcon: Icon(
                              Icons.visibility_off_outlined,
                            ),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: SvgPicture.asset(
                                AppIcons.lockSvg,
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Confirm Password',
                                style: TextFontStyle.textStyle13w500Poppins
                                    .copyWith(
                                  color: AppColors.c4B5563,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          CustomTextfield(
                            hintText: 'Confirm your password',
                            inputType: TextInputType.emailAddress,
                            fillColor: AppColors.cF9FAFB,
                            borderColor: AppColors.cF9FAFB,
                            isObsecure: true,
                            suffixIcon: Icon(
                              Icons.visibility_off_outlined,
                            ),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: SvgPicture.asset(
                                AppIcons.lockSvg,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Forget Password?",
                                style: TextFontStyle.textStyle13w500Poppins
                                    .copyWith(
                                  color: AppColors.primaryColor,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          customButton(
                            name: 'Log in',
                            onCallBack: () {},
                            context: context,
                            color: AppColors.primaryColor,
                            borderColor: AppColors.primaryColor,
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Already have an account?",
                                style: TextFontStyle.textStyle13w500Poppins
                                    .copyWith(
                                  color: AppColors.primaryColor,
                                ),
                              ),
                              SizedBox(width: 5),
                              GestureDetector(
                                onTap: () {
                                  NavigationService.goBack();
                                },
                                child: Text(
                                  "Sign In",
                                  style: TextFontStyle.textStyle13w500Poppins
                                      .copyWith(
                                    color: AppColors.primaryColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
