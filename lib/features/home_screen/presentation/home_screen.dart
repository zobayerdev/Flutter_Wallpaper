import 'package:flutter/material.dart';
import 'package:wallpaper_hub/assets_helper/app_colors.dart';
import 'package:wallpaper_hub/assets_helper/app_fonts.dart';
import 'package:wallpaper_hub/assets_helper/app_icons.dart';
import 'package:wallpaper_hub/common_widgets/custom_textField.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.c182234,
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
              padding: EdgeInsets.all(
                20,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Wallpaper Hub",
                            style:
                                TextFontStyle.textStyle15w600Poppins.copyWith(
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                              color: AppColors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Discover stunning wallpapers daily",
                            style:
                                TextFontStyle.textStyle15w600Poppins.copyWith(
                              fontWeight: FontWeight.w600,
                              color: AppColors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextFormField(
                    isPrefixIcon: true,
                    isBorder: false,
                    fillColor: AppColors.c303C4A,
                    hintText: 'Search',
                    iconpath: AppIcons.searchIcon,
                    controller: _searchController,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Categories",
                        style: TextFontStyle.textStyle15w500Poppins.copyWith(
                          color: AppColors.white,
                        ),
                      ),
                      Text(
                        "See all",
                        style: TextFontStyle.textStyle15w500Poppins.copyWith(
                          color: AppColors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
