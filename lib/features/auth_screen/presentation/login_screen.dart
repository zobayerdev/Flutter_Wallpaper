import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:wallpaper_hub/assets_helper/app_colors.dart';
import 'package:wallpaper_hub/assets_helper/app_fonts.dart';
import 'package:wallpaper_hub/assets_helper/app_icons.dart';
import 'package:wallpaper_hub/assets_helper/app_images.dart';
import 'package:wallpaper_hub/assets_helper/app_lottie.dart';
import 'package:wallpaper_hub/common_widgets/custom_button.dart';
import 'package:wallpaper_hub/common_widgets/custom_textField.dart';
import 'package:wallpaper_hub/features/auth_screen/widgets/custom_image_button.dart';
import 'package:wallpaper_hub/helpers/all_routes.dart';
import 'package:wallpaper_hub/helpers/navigation_service.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isObscure = true;
  bool isLoading = false; // Track the loading state
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
                          CustomTextFormField(
                            isPrefixIcon: true,
                            isBorder: true,
                            fillColor: AppColors.cFBFBFB,
                            hintText: 'Email',
                            iconpath: AppIcons.emailSvg,
                            controller: _emailController,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
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
                            hintText: 'Password',
                            iconpath: AppIcons.lockSvg,
                            controller: _passwordController,
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
                                  name: 'Sign In',
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
                                    //     Routes.navigationScreen);
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
                              color: AppColors.c3D4040,
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
                                  color: AppColors.c3D4040,
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
                                    color: AppColors.c3D4040,
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
