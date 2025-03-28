import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wallpaper_hub/assets_helper/app_colors.dart';
import 'package:wallpaper_hub/assets_helper/app_fonts.dart';
import 'package:wallpaper_hub/common_widgets/custom_button.dart';
import 'package:wallpaper_hub/helpers/all_routes.dart';
import 'package:wallpaper_hub/helpers/navigation_service.dart';



class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
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
              padding: EdgeInsets.only(top: 50, left: 20, right: 20),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 30),
                    GestureDetector(
                      onTap: () {
                        NavigationService.navigateTo(Routes.signUpScreen);
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
                    SizedBox(height: 40),
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.white12,
                      child: Icon(
                        Icons.verified_user_outlined,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                    SizedBox(height: 30),
                    Text(
                      'Verify Your Account',
                      style: TextFontStyle.headLine22w700Poppins.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Enter the 4-digit code sent to',
                      style: TextFontStyle.textStyle14w600Poppins.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.c969696,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '+1 (555) 123-4567',
                      style: TextFontStyle.textStyle14w600Poppins.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.white,
                      ),
                    ),
                    SizedBox(height: 30),
                    GradientOtpField(
                      numberOfFields: 4,
                      onSubmit: (value) {},
                    ),
                    SizedBox(height: 30),
                    Text(
                      'Resend code in 00:45',style: TextFontStyle.textStyle12w500Poppins.copyWith(color: AppColors.c969696),
                    ),
                    SizedBox(height: 30),
                    customButton(
                      name: 'Verify',
                      onCallBack: () {
                        NavigationService.navigateTo(
                          Routes.otpScreen,
                        );
                      },
                      context: context,
                      color: AppColors.primaryColor,
                      borderColor: AppColors.primaryColor,
                    ),
                    SizedBox(height: 25),
                    Text(
                      'Resend Code',
                      style: TextFontStyle.textStyle14w600Poppins.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.c3A86FF,
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

// --------------- otp field class ---------------------
class GradientOtpField extends StatefulWidget {
  final int numberOfFields;
  final ValueChanged<String> onSubmit;

  // ignore: use_super_parameters
  const GradientOtpField({
    Key? key,
    this.numberOfFields = 6,
    required this.onSubmit,
  }) : super(key: key);

  @override
  _GradientOtpFieldState createState() => _GradientOtpFieldState();
}

class _GradientOtpFieldState extends State<GradientOtpField> {
  final List<TextEditingController> _controllers = [];
  final List<FocusNode> _focusNodes = [];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < widget.numberOfFields; i++) {
      _controllers.add(TextEditingController());
      _focusNodes.add(FocusNode());
    }
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var focusNode in _focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

  void _onChanged(String value, int index) {
    if (value.isNotEmpty && index < widget.numberOfFields - 1) {
      FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
    }
    if (index == widget.numberOfFields - 1) {
      String otp = _controllers.map((c) => c.text).join();
      if (otp.length == widget.numberOfFields) {
        widget.onSubmit(otp);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(widget.numberOfFields, (index) {
          return Container(
            width: 70,
            height: 70,
            margin: const EdgeInsets.symmetric(horizontal: 6),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.white10, Colors.white10],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: Colors.white54,
                width: 1,
              ),
            ),
            padding: const EdgeInsets.all(2),
            child: TextField(
              controller: _controllers[index],
              focusNode: _focusNodes[index],
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              maxLength: 1,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              decoration: const InputDecoration(
                counterText: "",
                border: InputBorder.none,
              ),
              onChanged: (value) => _onChanged(value, index),
            ),
          );
        }),
      ),
    );
  }

}

