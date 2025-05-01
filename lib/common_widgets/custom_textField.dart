// // ignore_for_file: library_private_types_in_public_api
//
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:wallpaper_hub/assets_helper/app_colors.dart';
// import 'package:wallpaper_hub/assets_helper/app_fonts.dart';
//
// class CustomTextFormField extends StatefulWidget {
//   final String? labelText;
//   final String? hintText;
//   final Widget? prefixIcon;
//   final IconData? suffixIcon;
//   final bool obscureText;
//   final TextEditingController? controller;
//   final TextInputType keyboardType;
//   final Function(String)? onChanged;
//   final String? Function(String?)? validator;
//   final bool isPrefixIcon;
//   final double borderRadius;
//   final VoidCallback? onSuffixIconTap;
//   final String? iconpath;
//   final int maxline;
//   final bool readOnly;
//   final bool isBorder;
//   final Color fillColor;
//
//   const CustomTextFormField({
//     super.key,
//     this.labelText,
//     this.hintText,
//     this.prefixIcon,
//     this.suffixIcon,
//     this.obscureText = false,
//     this.controller,
//     this.keyboardType = TextInputType.text,
//     this.onChanged,
//     this.validator,
//     this.borderRadius = 10.0, // Set to 10 pixels
//     required this.isPrefixIcon,
//     this.iconpath,
//     this.onSuffixIconTap,
//     this.readOnly = false,
//     this.maxline = 1,
//     this.isBorder = false,
//     this.fillColor = AppColors.cFBFBFB,
//   });
//
//   @override
//   _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
// }
//
// class _CustomTextFormFieldState extends State<CustomTextFormField> {
//   late FocusNode _focusNode;
//   bool _isFocused = false;
//
//   @override
//   void initState() {
//     super.initState();
//     _focusNode = FocusNode();
//     _focusNode.addListener(() {
//       setState(() {
//         _isFocused = _focusNode.hasFocus;
//       });
//     });
//   }
//
//   @override
//   void dispose() {
//     _focusNode.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(
//           widget.borderRadius,
//         ),
//       ),
//       child: TextFormField(
//         readOnly: widget.readOnly,
//         maxLines: widget.maxline,
//         focusNode: _focusNode,
//         controller: widget.controller,
//         keyboardType: widget.keyboardType,
//         obscureText: widget.obscureText,
//         onChanged: widget.onChanged,
//         validator: widget.validator,
//         decoration: InputDecoration(
//           filled: true,
//           fillColor: widget.fillColor,
//           labelText: widget.labelText,
//           labelStyle: TextFontStyle.textStyle14w400Poppins.copyWith(
//             color: AppColors.c919293,
//             fontSize: 14,
//             height: 22 / 14,
//             letterSpacing: 0.8,
//           ),
//           hintText: widget.hintText,
//           hintStyle: TextFontStyle.textStyle14w400Poppins.copyWith(
//             color: AppColors.c9A9FA5,
//             fontSize: 14,
//             height: 22 / 14,
//             letterSpacing: 0.8,
//           ),
//           prefixIcon: widget.isPrefixIcon && widget.iconpath != null
//               ? Padding(
//                   padding: EdgeInsets.only(left: 20, right: 12),
//                   child: SvgPicture.asset(
//                     widget.iconpath!,
//                     width: 24,
//                     color:
//                         _isFocused ? AppColors.primaryColor : AppColors.c9A9FA5,
//                   ),
//                 )
//               : null,
//           suffixIcon: widget.suffixIcon != null
//               ? GestureDetector(
//                   onTap: widget.onSuffixIconTap,
//                   child: Padding(
//                     padding: EdgeInsets.only(right: 16),
//                     child: Icon(
//                       widget.suffixIcon,
//                       color: _isFocused
//                           ? AppColors.primaryColor
//                           : AppColors.c919293,
//                     ),
//                   ),
//                 )
//               : null,
//           border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(widget.borderRadius),
//               borderSide: BorderSide.none),
//           enabledBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(widget.borderRadius),
//             borderSide: widget.isBorder == true
//                 ? const BorderSide(
//                     color:
//                         AppColors.cEBEBEB, // Adjust the border width if needed
//                   )
//                 : BorderSide.none,
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(widget.borderRadius),
//             borderSide: const BorderSide(
//               color:
//                   AppColors.primaryColor, // Adjust the border width if needed
//             ),
//           ),
//           errorBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(widget.borderRadius),
//             borderSide: const BorderSide(color: Colors.red),
//           ),
//           disabledBorder: InputBorder.none,
//           contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 18),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallpaper_hub/assets_helper/app_colors.dart';
import 'package:wallpaper_hub/assets_helper/app_fonts.dart';
class CustomTextFormField extends StatefulWidget {
  final String? labelText;
  final String? hintText;
  final Widget? prefixIcon;
  final IconData? suffixIcon;
  final bool obscureText;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final bool isPrefixIcon;
  final double borderRadius;
  final VoidCallback? onSuffixIconTap;
  final String? iconpath;
  final int maxline;
  final bool readOnly;
  final bool isBorder;
  final Color fillColor;

  // ✅ নতুন প্রপার্টি
  final Color? hintTextColor;
  final Color? textColor;
  final Color? iconColor;

  const CustomTextFormField({
    super.key,
    this.labelText,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.onChanged,
    this.validator,
    this.borderRadius = 10.0,
    required this.isPrefixIcon,
    this.iconpath,
    this.onSuffixIconTap,
    this.readOnly = false,
    this.maxline = 1,
    this.isBorder = false,
    this.fillColor = AppColors.cFBFBFB,
    this.hintTextColor, // ✅
    this.textColor,     // ✅
    this.iconColor,     // ✅
  });

  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  late FocusNode _focusNode;
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() {
        _isFocused = _focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          widget.borderRadius,
        ),
      ),
      child: TextFormField(
        readOnly: widget.readOnly,
        maxLines: widget.maxline,
        focusNode: _focusNode,
        controller: widget.controller,
        keyboardType: widget.keyboardType,
        obscureText: widget.obscureText,
        onChanged: widget.onChanged,
        validator: widget.validator,
        style: TextFontStyle.textStyle14w400Poppins.copyWith(
          color: widget.textColor ?? AppColors.white,
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: widget.fillColor,
          labelText: widget.labelText,
          labelStyle: TextFontStyle.textStyle14w400Poppins.copyWith(
            color: AppColors.c919293,
            fontSize: 14,
            height: 22 / 14,
            letterSpacing: 0.8,
          ),
          hintText: widget.hintText,
          hintStyle: TextFontStyle.textStyle14w400Poppins.copyWith(
            color: widget.hintTextColor ?? AppColors.c9A9FA5,
            fontSize: 14,
            height: 22 / 14,
            letterSpacing: 0.8,
          ),
          prefixIcon: widget.isPrefixIcon && widget.iconpath != null
              ? Padding(
            padding: EdgeInsets.only(left: 20, right: 12),
            child: SvgPicture.asset(
              widget.iconpath!,
              width: 24,
              color: widget.iconColor ??
                  (_isFocused
                      ? AppColors.primaryColor
                      : AppColors.c9A9FA5),
            ),
          )
              : null,
          suffixIcon: widget.suffixIcon != null
              ? GestureDetector(
            onTap: widget.onSuffixIconTap,
            child: Padding(
              padding: EdgeInsets.only(right: 16),
              child: Icon(
                widget.suffixIcon,
                color: widget.iconColor ??
                    (_isFocused
                        ? AppColors.primaryColor
                        : AppColors.c919293),
              ),
            ),
          )
              : null,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(widget.borderRadius),
              borderSide: BorderSide.none),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius),
            borderSide: widget.isBorder == true
                ? const BorderSide(color: AppColors.cEBEBEB)
                : BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius),
            borderSide: const BorderSide(color: AppColors.primaryColor),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius),
            borderSide: const BorderSide(color: Colors.red),
          ),
          disabledBorder: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 18),
        ),
      ),
    );
  }
}




























// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:wallpaper_hub/assets_helper/app_colors.dart';
// import 'package:wallpaper_hub/assets_helper/app_fonts.dart';
//
// class CustomTextField extends StatelessWidget {
//   final String hintText;
//   final String? leadingIcon;
//   final IconData? trailingIcon;
//   final bool obscureText;
//   final bool readOnly;
//   final VoidCallback? onTap; // Optional onTap callback for GestureDetector
//   final VoidCallback? onTrailingIconPressed;
//   final TextEditingController? controller;
//   final TextInputType? keyboardType;
//   final String? Function(String?)? validator;
//   final FocusNode? focusNode;
//   final Function(String)? onChanged;
//   final TextInputAction? textInputAction;
//   final Function(String)? onFieldSubmitted;
//   final Color? backgroundColor; // New parameter for background color
//   final double? height; // Height parameter
//   final double? width; // Width parameter
//   final double? borderRadius; // Border radius parameter
//
//   const CustomTextField({
//     super.key,
//     this.readOnly = false,
//     this.onTap, // Default is null
//     required this.hintText,
//     this.leadingIcon,
//     this.trailingIcon,
//     this.obscureText = false,
//     this.onTrailingIconPressed,
//     this.controller,
//     this.keyboardType,
//     this.validator,
//     this.focusNode,
//     this.onChanged,
//     this.textInputAction,
//     this.onFieldSubmitted,
//     this.backgroundColor, // Accepts the background color
//     this.height = 75, // Default height
//     this.width = double.infinity, // Default width is infinity
//     this.borderRadius = 50, // Default border radius
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     double verticalPadding = (height ?? 58) / 5; // Dynamic padding based on height
//
//     return SizedBox(
//       width: width, // Width set to the passed parameter or default infinity
//       height: height, // Height set to the passed parameter or default 56
//       child: TextFormField(
//         cursorColor: AppColors.cE8EBED,
//         readOnly: readOnly,
//         onTap: onTap,
//         controller: controller,
//         obscureText: obscureText,
//         keyboardType: keyboardType,
//         validator: validator,
//         focusNode: focusNode,
//         onChanged: onChanged,
//         textInputAction: textInputAction,
//         onFieldSubmitted: onFieldSubmitted,
//         style: const TextStyle(color: AppColors.cE8EBED),
//         showCursor: true,
//         decoration: InputDecoration(
//           fillColor: backgroundColor ?? AppColors.c444444, // Use the backgroundColor passed or default
//           contentPadding: EdgeInsets.symmetric(vertical: verticalPadding, horizontal: 5),
//           filled: true,
//           hintText: hintText,
//           hintStyle: const TextStyle(color: AppColors.cA8A8A8),
//           prefixIcon: leadingIcon != null
//               ? Padding(
//             padding: EdgeInsets.all(15),
//             child: SvgPicture.asset(
//               leadingIcon!,
//             ),
//           )
//               : null,
//           suffixIcon: trailingIcon != null
//               ? IconButton(
//             icon: Icon(
//               trailingIcon,
//               color: AppColors.whiteColor,
//             ),
//             onPressed: onTrailingIconPressed,
//           )
//               : null,
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(borderRadius!), // Use the passed border radius
//             borderSide: BorderSide(
//               color: AppColors.secondaryColor.withOpacity(0.32),
//             ),
//           ),
//           enabledBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(borderRadius!),
//             borderSide: BorderSide(
//               color: AppColors.secondaryColor.withOpacity(0.32),
//             ),
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(borderRadius!),
//             borderSide: BorderSide(color: AppColors.secondaryColor, width: 1),
//           ),
//           errorBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(borderRadius!),
//             borderSide: BorderSide(color: AppColors.secondaryColor.withOpacity(0.32)),
//           ),
//           focusedErrorBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(borderRadius!),
//             borderSide: BorderSide(color: AppColors.secondaryColor.withOpacity(0.32)),
//           ),
//           errorStyle: TextFontStyle.textStyle18w500Poppins,
//           disabledBorder: InputBorder.none,
//         ),
//       ),
//     );
//   }
// }