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


class NewPassScreen extends StatefulWidget {
  const NewPassScreen({super.key});

  @override
  State<NewPassScreen> createState() => _NewPassScreenState();
}

class _NewPassScreenState extends State<NewPassScreen> {
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
              padding: EdgeInsets.only(top: 50, left: 20, right: 20),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        NavigationService.navigateTo(Routes.forgetScreen);
                      },
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
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
                                'Set New Password',
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
                                'Create a strong password for your account',
                                style: TextFontStyle.textStyle13w600Poppins.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.c4B5563,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          CustomTextfield(
                            hintText: 'New password',
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
                          CustomTextfield(
                            hintText: 'Confirm password',
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
                          customButton(
                            name: 'Set Password ',
                            onCallBack: () {},
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
