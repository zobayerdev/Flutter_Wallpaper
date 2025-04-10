import 'package:flutter/material.dart';
import 'package:wallpaper_hub/assets_helper/app_colors.dart';
import 'package:wallpaper_hub/assets_helper/app_fonts.dart';
import 'package:wallpaper_hub/assets_helper/app_icons.dart';
import 'package:wallpaper_hub/assets_helper/app_images.dart';
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
              padding: EdgeInsets.only(top: 30, left: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        AppImages.logo,
                        height: 70,
                        width: 70,
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
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
                  SizedBox(height: 20),
                  CustomTextFormField(
                    isPrefixIcon: true,
                    isBorder: false,
                    fillColor: AppColors.c30394A,
                    hintText: 'Search wallpaper...',
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
                        style: TextFontStyle.textStyle18w500Poppins.copyWith(
                          color: AppColors.white,
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "See all ",
                                style: TextFontStyle.textStyle15w500Poppins.copyWith(
                                  color: AppColors.c9A9FA5,
                                ),
                              ),
                              Icon(Icons.keyboard_arrow_right_outlined,color: Colors.white,)
                            ],
                          ),

                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal, // Set horizontal scrolling
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 120, // Width of each item
                            height: 60,// Width of each item
                            decoration: BoxDecoration(
                              color: AppColors.c30394A, // Item color
                              borderRadius: BorderRadius.circular(10), // Border radius
                            ),
                            child: Center(
                              child: Text(
                                'Nature',
                                style: TextFontStyle.textStyle15w500Poppins.copyWith(color: AppColors.white)
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 120, // Width of each item
                            height: 60,// Width of each item
                            decoration: BoxDecoration(
                              color: AppColors.c30394A, // Item color
                              borderRadius: BorderRadius.circular(10), // Border radius
                            ),
                            child: Center(
                              child: Text(
                                'Abstract',
                                  style: TextFontStyle.textStyle15w500Poppins.copyWith(color: AppColors.white)
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 120, // Width of each item
                            height: 60,// Width of each item
                            decoration: BoxDecoration(
                              color: AppColors.c30394A, // Item color
                              borderRadius: BorderRadius.circular(10), // Border radius
                            ),
                            child: Center(
                              child: Text(
                                'Minimal',
                                  style: TextFontStyle.textStyle15w500Poppins.copyWith(color: AppColors.white)
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 120, // Width of each item
                            height: 60,// Width of each item
                            decoration: BoxDecoration(
                              color: AppColors.c30394A, // Item color
                              borderRadius: BorderRadius.circular(10), // Border radius
                            ),
                            child: Center(
                              child: Text(
                                'Popular',
                                  style: TextFontStyle.textStyle15w500Poppins.copyWith(color: AppColors.white)
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Featured Wallpapers",
                    style: TextFontStyle.textStyle18w500Poppins.copyWith(
                      color: AppColors.white,
                    ),
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
