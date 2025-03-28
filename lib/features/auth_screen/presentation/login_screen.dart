import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallpaper_hub/assets_helper/app_colors.dart';
import 'package:wallpaper_hub/assets_helper/app_fonts.dart';
import 'package:wallpaper_hub/assets_helper/app_icons.dart';
import 'package:wallpaper_hub/assets_helper/app_images.dart';
import 'package:wallpaper_hub/common_widgets/custom_button.dart';
import 'package:wallpaper_hub/common_widgets/custom_text_field.dart';
import 'package:wallpaper_hub/features/auth_screen/widgets/custom_image_button.dart';
import 'package:wallpaper_hub/helpers/all_routes.dart';
import 'package:wallpaper_hub/helpers/navigation_service.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
              padding: EdgeInsets.only(top: 120, left: 20, right: 20),
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
                      'Discover stunning wallpapers daily',
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
                                'Welcome Back',
                                style: TextFontStyle.textStyle18w600Poppins
                                    .copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.blackColor,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          CustomTextfield(
                            hintText: 'Enter Email',
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
                          CustomTextfield(
                            hintText: 'Enter Password',
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
                            onCallBack: () {
                            },
                            context: context,
                            color: AppColors.primaryColor,
                            borderColor: AppColors.primaryColor,
                          ),
                          SizedBox(height: 20),
                          Text(
                            "or continue with",
                            style:
                                TextFontStyle.textStyle13w500Poppins.copyWith(
                              color: AppColors.primaryColor,
                            ),
                          ),
                          SizedBox(height: 20),
                          customImageButton(
                            name: 'Continue with Google',
                            onCallBack: () {},
                            context: context,
                            color: AppColors.whiteColor,
                            borderColor: AppColors.whiteColor,
                            height: 50,
                            textStyle:
                                TextFontStyle.textStyle13w500Poppins.copyWith(
                              color: AppColors.blackColor,
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Don't have an account?",
                                style: TextFontStyle.textStyle13w500Poppins
                                    .copyWith(
                                  color: AppColors.primaryColor,
                                ),
                              ),
                              SizedBox(width: 5),
                              GestureDetector(
                                onTap: () {
                                  NavigationService.navigateTo(
                                    Routes.signUpScreen,
                                  );
                                },
                                child: Text(
                                  "Sign Up",
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
