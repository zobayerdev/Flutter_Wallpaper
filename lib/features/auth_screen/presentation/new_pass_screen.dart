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

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({super.key});

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  bool _isObscure = true;
  bool _isCObscure = true;
  bool isLoading = false;
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

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
                                'Set New Password',
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
                                'New Password',
                                style: TextFontStyle.textStyle13w500Poppins
                                    .copyWith(
                                  color: AppColors.c4B5563,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          CustomTextFormField(
                            obscureText: _isObscure,
                            isPrefixIcon: true,
                            isBorder: true,
                            fillColor: AppColors.cFBFBFB,
                            suffixIcon: _isObscure
                                ? Icons.visibility_off
                                : Icons.visibility,
                            onSuffixIconTap: () {
                              setState(() {
                                _isObscure = !_isObscure;
                              });
                            },
                            hintText: 'New Password',
                            iconpath: AppIcons.lockSvg,
                            controller: _passwordController,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
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
                          SizedBox(height: 5),
                          CustomTextFormField(
                            obscureText: _isCObscure,
                            isPrefixIcon: true,
                            isBorder: true,
                            fillColor: AppColors.cFBFBFB,
                            suffixIcon: _isCObscure
                                ? Icons.visibility_off
                                : Icons.visibility,
                            onSuffixIconTap: () {
                              setState(() {
                                _isCObscure = !_isCObscure;
                              });
                            },
                            hintText: 'Confirm New Password',
                            iconpath: AppIcons.lockSvg,
                            controller: _confirmPasswordController,
                          ),
                          SizedBox(height: 25),
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
                            name: 'Set Password',
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

                              // NavigationService.navigateTo(
                              //     Routes.otpScreen);
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
                                  style:   TextFontStyle.textStyle15w500Poppins.copyWith(
                                    color: AppColors.primaryColor,
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
