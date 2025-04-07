import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallpaper_hub/assets_helper/app_colors.dart';
import 'package:wallpaper_hub/assets_helper/app_fonts.dart';
import 'package:wallpaper_hub/assets_helper/app_icons.dart';
import 'package:wallpaper_hub/assets_helper/app_images.dart';
import 'package:wallpaper_hub/common_widgets/custom_button.dart';
import 'package:wallpaper_hub/common_widgets/custom_text_field.dart';
import 'package:wallpaper_hub/constants/custome_theme.dart';
import 'package:wallpaper_hub/helpers/all_routes.dart';
import 'package:wallpaper_hub/helpers/navigation_service.dart';


class ForgetScreen extends StatefulWidget {
  const ForgetScreen({super.key});

  @override
  State<ForgetScreen> createState() => _ForgetScreenState();
}

class _ForgetScreenState extends State<ForgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: CustomTheme.kToDark,
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
                      AppImages.logo2,
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
                                'Reset Password',
                                style: TextFontStyle.headLine24w600Poppins
                                    .copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.blackColor,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 4),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Enter your email address and well send you \ninstructions to reset your password.',
                                style: TextFontStyle.textStyle13w600Poppins.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.c4B5563,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          CustomTextfield(
                            hintText: 'Email or username',
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
                          customButton(
                            name: 'Send Reset Link',
                            onCallBack: () {
                              NavigationService.navigateTo(
                                Routes.newPassScreen,
                              );
                            },
                            context: context,
                            gradient: LinearGradient(
                              colors: [
                                AppColors.gradiantEnd,
                                AppColors.gradiantStart,
                              ],
                              begin: Alignment.centerLeft,
                              end: Alignment.bottomCenter,
                            ),
                            borderColor: AppColors.primaryColor,
                          ),

                          SizedBox(height: 20),
                          Text(
                            "Back to Login",
                            style:
                            TextFontStyle.textStyle13w500Poppins.copyWith(
                              color: AppColors.primaryColor,
                            ),
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
