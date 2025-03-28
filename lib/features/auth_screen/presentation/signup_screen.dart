import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallpaper_hub/assets_helper/app_colors.dart';
import 'package:wallpaper_hub/assets_helper/app_fonts.dart';
import 'package:wallpaper_hub/assets_helper/app_icons.dart';
import 'package:wallpaper_hub/assets_helper/app_images.dart';
import 'package:wallpaper_hub/common_widgets/custom_button.dart';
import 'package:wallpaper_hub/common_widgets/custom_text_field.dart';
import 'package:wallpaper_hub/helpers/all_routes.dart';
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
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              AppColors.gradiant_two,
              AppColors.gradiant_one,
            ],
            stops: [
              0.0,
              1.0
            ],
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
                    Text(
                      'WallHub',
                      style: TextFontStyle.headLine22w700Poppins.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Discover Premium Wallpapers',
                      style: TextFontStyle.textStyle14w600Poppins.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.white,
                      ),
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.asset(
                                AppImages.wallpaper_1,
                                height: 100,
                                width: 70,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(width: 10),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.asset(
                                AppImages.wallpaper_3,
                                height: 100,
                                width: 70,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(width: 10),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.asset(
                                AppImages.wallpaper_2,
                                height: 100,
                                width: 70,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 25),
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
                          SizedBox(height: 25),
                          customButton(
                            name: 'Create Account',
                            onCallBack: () {
                              NavigationService.navigateTo(
                                Routes.otpScreen,
                              );
                            },
                            context: context,
                            color: AppColors.primaryColor,
                            borderColor: AppColors.primaryColor,
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "or continue with",
                                style: TextFontStyle.textStyle14w500Poppins
                                    .copyWith(color: AppColors.c3D4040),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                AppIcons.googleSvg,
                                height: 20,
                                width: 20,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Google",
                                style: TextFontStyle.textStyle12w500Poppins
                                    .copyWith(color: AppColors.c2C303E),
                              ),
                              SizedBox(
                                width: 100,
                              ),
                              SvgPicture.asset(
                                AppIcons.appleIcon,
                                height: 23,
                                width: 23,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Apple",
                                style: TextFontStyle.textStyle12w500Poppins
                                    .copyWith(color: AppColors.c2C303E),
                              )
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("By signing up, you agree to our Terms and",
                                  style: TextFontStyle.textStyle14w500Poppins
                                      .copyWith(color: AppColors.c3D4040)
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Privacy Policy",
                                  style: TextFontStyle.textStyle14w500Poppins
                                      .copyWith(color: AppColors.c3D4040)
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Already have an account?",
                                style: TextFontStyle.textStyle14w500Poppins
                                    .copyWith(color: AppColors.c3D4040),
                              ),
                              SizedBox(width: 5),
                              GestureDetector(
                                onTap: () {
                                  NavigationService.goBack();
                                },
                                child: Text("Sign In",
                                    style: TextFontStyle.textStyle14w500Poppins
                                        .copyWith(
                                            color: AppColors.c3D4040,
                                            fontWeight: FontWeight.bold)
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
