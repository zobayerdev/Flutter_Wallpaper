import 'package:flutter_svg/svg.dart';
import 'package:wallpaper_hub/assets_helper/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:wallpaper_hub/assets_helper/app_fonts.dart';
import 'package:wallpaper_hub/assets_helper/app_icons.dart';

Widget customImageButton({
  required String name,
  required VoidCallback? onCallBack, // Allow null for safety
  double? height,
  double? minWidth,
  double? borderRadius,
  Color? color,
  padding,
  TextStyle? textStyle,
  required BuildContext context,
  Color? borderColor,
  elevation,
}) {
  return GestureDetector(
    onTap: onCallBack ?? () {}, // Provide a fallback if null
    child: Container(
      height: height ?? 62,
      width: minWidth ?? double.infinity,
      padding: padding ?? EdgeInsets.all(0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color ?? AppColors.c6940C9,
        borderRadius: BorderRadius.circular(borderRadius ?? 12),
        border: Border.all(
          color: borderColor ?? AppColors.c0A5B55,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(AppIcons.googleSvg),
          SizedBox(width: 20),
          Text(
            name,
            overflow: TextOverflow.ellipsis,
            style: textStyle ??
                TextFontStyle.textStyle16w700Poppins
                    .copyWith(color: AppColors.cFFFFFF),
          ),
        ],
      ),
    ),
  );
}
