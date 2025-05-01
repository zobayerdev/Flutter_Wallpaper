import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:wallpaper_hub/assets_helper/app_colors.dart';
import 'package:wallpaper_hub/assets_helper/app_fonts.dart';
import 'package:wallpaper_hub/assets_helper/app_icons.dart';
import 'package:wallpaper_hub/assets_helper/app_images.dart';
import 'package:wallpaper_hub/assets_helper/app_lottie.dart';
import 'package:wallpaper_hub/common_widgets/custom_button.dart';
import 'package:wallpaper_hub/common_widgets/custom_textField.dart';
import 'package:wallpaper_hub/helpers/all_routes.dart';
import 'package:wallpaper_hub/helpers/navigation_service.dart';

class ForgetScreen extends StatefulWidget {
  const ForgetScreen({super.key});

  @override
  State<ForgetScreen> createState() => _ForgetScreenState();
}

class _ForgetScreenState extends State<ForgetScreen> {
  bool isLoading = false;
  final TextEditingController _emailController = TextEditingController();

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
            stops: [0.0, 1.0],
          ),
        ),
        child: SizedBox(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                top: 120,
                left: 20,
                right: 20,
              ),
              child: Center(
                child: Column(
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
                    SizedBox(
                      height: 20,
                    ),
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
                                style: TextFontStyle.textStyle18w600Poppins
                                    .copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.blackColor,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text(
                                'Enter your email address and we will send you \ninstructions to reset your password.',
                                style: TextFontStyle.textStyle12w600Poppins
                                    .copyWith(
                                  color: AppColors.c4B5563,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          CustomTextFormField(
                            isPrefixIcon: true,
                            isBorder: true,
                            fillColor: AppColors.cFBFBFB,
                            hintText: 'Email',
                            iconpath: AppIcons.emailSvg,
                            controller: _emailController,
                            hintTextColor: AppColors.c818181,
                            textColor: AppColors.c818181,
                            iconColor: AppColors.c818181,
                          ),
                          SizedBox(height: 20),
                          isLoading // If the loading state is true, show loading
                              ? Container(
                            height: 62,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: AppColors.primaryColor,
                                width: 2,
                              ),
                            ),
                            child: Lottie.asset(
                              AppLottie.loading,
                              height: 100,
                              width: 100,
                            ),
                          )
                              : customButton(
                            name: 'Send Reset Link',
                            onCallBack: () async {
                              setState(() {
                                isLoading = true; // Start loading
                              });

                              // await postLoginRx.signIn(
                              //   email: _emailController.text,
                              //   password: _passwordController.text,
                              // );

                              // setState(() {
                              //   isLoading = false; // Stop loading
                              // });

                              NavigationService.navigateTo(
                                  Routes.otpScreen);
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
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  NavigationService.navigateToReplacement(
                                    Routes.logInScreen,
                                  );
                                },
                                child: Text(
                                  "Back to login",
                                   
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
