// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:wallpaper_hub/assets_helper/app_colors.dart';
// import 'package:wallpaper_hub/assets_helper/app_fonts.dart';
// import 'package:wallpaper_hub/assets_helper/app_icons.dart';
// import 'package:wallpaper_hub/assets_helper/app_images.dart';
// import 'package:wallpaper_hub/common_widgets/custom_textField.dart';
//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   bool _isObscure = true;
//   bool isLoading = false;
//   final TextEditingController _searchController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.c182234,
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.bottomLeft,
//             end: Alignment.topRight,
//             colors: [
//               AppColors.gradiant_two,
//               AppColors.gradiant_one,
//             ],
//             stops: [0.0, 1.0],
//           ),
//         ),
//         child: SizedBox(
//           child: SingleChildScrollView(
//             child: Padding(
//               padding: EdgeInsets.only(top: 30, left: 20, right: 20),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   SizedBox(height: 20),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [SvgPicture.asset(AppIcons.logoIcon)],
//                   ),
//                   SizedBox(height: 5),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Text(
//                         "Wallscape",
//                         style: TextFontStyle.textStyle15w600Poppins.copyWith(
//                           fontSize: 30,
//                           fontWeight: FontWeight.w600,
//                           color: AppColors.white,
//                         ),
//                       ),
//                     ],
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Text(
//                         "Discover stunning wallpapers daily",
//                         style: TextFontStyle.textStyle15w600Poppins.copyWith(
//                           fontWeight: FontWeight.w600,
//                           color: AppColors.white,
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 20),
//                   CustomTextFormField(
//                     obscureText: false,
//                     isPrefixIcon: true,
//                     isBorder: false,
//                     fillColor: AppColors.c313B4B,
//                     hintText: 'Search wallpapers...',
//                     iconpath: AppIcons.searchIcon,
//                     readOnly: false,
//                     controller: _searchController,
//                     hintTextColor: AppColors.white,
//                     textColor: AppColors.white,
//                     iconColor: AppColors.white,
//
//                   ),
//
//
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         "Categories",
//                         style: TextFontStyle.textStyle18w500Poppins.copyWith(
//                           color: AppColors.white,
//                         ),
//                       ),
//                       Column(
//                         children: [
//                           Row(
//                             children: [
//                               Text(
//                                 "See all ",
//                                 style: TextFontStyle.textStyle15w500Poppins
//                                     .copyWith(
//                                   color: AppColors.c9A9FA5,
//                                 ),
//                               ),
//                               Icon(
//                                 Icons.keyboard_arrow_right_outlined,
//                                 color: Colors.white,
//                               )
//                             ],
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   SingleChildScrollView(
//                     scrollDirection:
//                         Axis.horizontal, // Set horizontal scrolling
//                     child: Row(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Container(
//                             width: 120, // Width of each item
//                             height: 60, // Width of each item
//                             decoration: BoxDecoration(
//                               color: AppColors.c30394A, // Item color
//                               borderRadius:
//                                   BorderRadius.circular(10), // Border radius
//                             ),
//                             child: Center(
//                               child: Text('Nature',
//                                   style: TextFontStyle.textStyle15w500Poppins
//                                       .copyWith(color: AppColors.white)),
//                             ),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Container(
//                             width: 120, // Width of each item
//                             height: 60, // Width of each item
//                             decoration: BoxDecoration(
//                               color: AppColors.c30394A, // Item color
//                               borderRadius:
//                                   BorderRadius.circular(10), // Border radius
//                             ),
//                             child: Center(
//                               child: Text('Abstract',
//                                   style: TextFontStyle.textStyle15w500Poppins
//                                       .copyWith(color: AppColors.white)),
//                             ),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Container(
//                             width: 120, // Width of each item
//                             height: 60, // Width of each item
//                             decoration: BoxDecoration(
//                               color: AppColors.c30394A, // Item color
//                               borderRadius:
//                                   BorderRadius.circular(10), // Border radius
//                             ),
//                             child: Center(
//                               child: Text('Minimal',
//                                   style: TextFontStyle.textStyle15w500Poppins
//                                       .copyWith(color: AppColors.white)),
//                             ),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Container(
//                             width: 120, // Width of each item
//                             height: 60, // Width of each item
//                             decoration: BoxDecoration(
//                               color: AppColors.c30394A, // Item color
//                               borderRadius:
//                                   BorderRadius.circular(10), // Border radius
//                             ),
//                             child: Center(
//                               child: Text('Popular',
//                                   style: TextFontStyle.textStyle15w500Poppins
//                                       .copyWith(color: AppColors.white)),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     height: 15,
//                   ),
//                   Text(
//                     "Featured Wallpapers",
//                     style: TextFontStyle.textStyle18w500Poppins.copyWith(
//                       color: AppColors.white,
//                     ),
//                   ),
//                   SizedBox(
//                     height: 15,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       /// 🔹 First Image with Logo & Text
//                       Stack(
//                         children: [
//                           ClipRRect(
//                             borderRadius: BorderRadius.circular(10),
//                             child: Image.asset(
//                               AppImages.wallpaper_2,
//                               height: 250,
//                               width: 167,
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//
//                           Positioned(
//                             top: 8,
//                             right: 8,
//                             child: Icon(
//                               Icons.favorite_border,
//                               color: Colors.grey,
//                               size: 20,
//                             ),
//                           ),
//
//                           /// 📷 Logo + Landscape Pro Text - Bottom Left
//                           Positioned(
//                             bottom: 8,
//                             left: 8,
//                             child: Row(
//                               children: [
//                                 Icon(
//                                   Icons.download,
//                                   color: Colors.grey,
//                                   size: 18,
//                                 ),
//                                 SizedBox(width: 6),
//                                 Text(
//                                   '2 k',
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 14,
//                                     shadows: [
//                                       Shadow(
//                                         blurRadius: 3,
//                                         color: Colors.black,
//                                         offset: Offset(1, 1),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//
//                       SizedBox(width: 10),
//
//                       ///🔹 Second Image with Different Text
//                       Stack(
//                         children: [
//                           ClipRRect(
//                             borderRadius: BorderRadius.circular(10),
//                             child: Image.asset(
//                               AppImages.wallpaper_1,
//                               height: 250,
//                               width: 167,
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//
//
//                           Positioned(
//                             top: 8,
//                             right: 8,
//                             child: Icon(
//                               Icons.favorite,
//                               color: Colors.red,
//                               size: 20,
//                             ),
//                           ),
//
//
//                           Positioned(
//                             bottom: 8,
//                             left: 8,
//                             child: Row(
//                               children: [
//                                 Icon(
//                                   Icons.download,
//                                   color: Colors.grey,
//                                   size: 18,
//                                 ),
//                                 SizedBox(width: 6),
//                                 Text(
//                                   '2 k',
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 14,
//                                     shadows: [
//                                       Shadow(
//                                         blurRadius: 3,
//                                         color: Colors.black,
//                                         offset: Offset(1, 1),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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

  final List<String> categories = ['Nature', 'Abstract', 'Minimal', 'Popular'];

  final List<Map<String, dynamic>> wallpapers = [
    {'image': AppImages.wallpaper_1, 'isFavorite': true, 'downloads': '2k'},
    {'image': AppImages.wallpaper_2, 'isFavorite': false, 'downloads': '1.5k'},
    {'image': AppImages.wallpaper_1, 'isFavorite': false, 'downloads': '1.2k'},
    {'image': AppImages.wallpaper_2, 'isFavorite': true, 'downloads': '3k'},
  ];

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
            colors: [AppColors.gradiant_two, AppColors.gradiant_one],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Logo & Header
                SvgPicture.asset(AppIcons.logoIcon),
                SizedBox(height: 8),
                Text(
                  "Wallscape",
                  style: TextFontStyle.textStyle15w600Poppins.copyWith(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: AppColors.white,
                  ),
                ),
                Text(
                  "Discover stunning wallpapers daily",
                  style: TextFontStyle.textStyle15w600Poppins.copyWith(
                    color: AppColors.white,
                  ),
                ),
                SizedBox(height: 20),

                /// Search Bar (Fixed)
                CustomTextFormField(
                  obscureText: false,
                  isPrefixIcon: true,
                  isBorder: false,
                  fillColor: AppColors.c313B4B,
                  hintText: 'Search wallpapers...',
                  iconpath: AppIcons.searchIcon,
                  readOnly: false,
                  controller: _searchController,
                  hintTextColor: AppColors.white,
                  textColor: AppColors.white,
                  iconColor: AppColors.white,
                ),
                SizedBox(height: 20),

                /// Categories (Also Fixed)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Categories",
                      style: TextFontStyle.textStyle18w500Poppins.copyWith(
                        color: AppColors.white,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "See all ",
                          style: TextFontStyle.textStyle15w500Poppins.copyWith(
                            color: AppColors.c9A9FA5,
                          ),
                        ),
                        Icon(Icons.keyboard_arrow_right_outlined, color: Colors.white),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),

                /// Horizontal Category List
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: categories.map((cat) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6.0),
                        child: Container(
                          width: 120,
                          height: 60,
                          decoration: BoxDecoration(
                            color: AppColors.c30394A,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              cat,
                              style: TextFontStyle.textStyle15w500Poppins.copyWith(
                                color: AppColors.white,
                              ),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
                SizedBox(height: 20),

                /// Scrollable Wallpapers Section Only
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// Featured Wallpapers Title
                        Text(
                          "Featured Wallpapers",
                          style: TextFontStyle.textStyle18w500Poppins.copyWith(
                            color: AppColors.white,
                          ),
                        ),
                        SizedBox(height: 15),

                        /// Wallpapers Grid
                        ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: (wallpapers.length / 2).ceil(),
                          itemBuilder: (context, index) {
                            final int first = index * 2;
                            final int second = first + 1;

                            return Padding(
                              padding: const EdgeInsets.only(bottom: 12),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  buildWallpaperCard(wallpapers[first]),
                                  SizedBox(width: 10),
                                  if (second < wallpapers.length)
                                    buildWallpaperCard(wallpapers[second])
                                  else
                                    SizedBox(width: 167),
                                ],
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 30),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildWallpaperCard(Map<String, dynamic> wallpaper) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            wallpaper['image'],
            height: 250,
            width: 167,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 8,
          right: 8,
          child: Icon(
            wallpaper['isFavorite'] ? Icons.favorite : Icons.favorite_border,
            color: wallpaper['isFavorite'] ? Colors.red : Colors.grey,
            size: 20,
          ),
        ),
        Positioned(
          bottom: 8,
          left: 8,
          child: Row(
            children: [
              Icon(Icons.download, color: Colors.grey, size: 18),
              SizedBox(width: 6),
              Text(
                wallpaper['downloads'],
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  shadows: [
                    Shadow(
                      blurRadius: 3,
                      color: Colors.black,
                      offset: Offset(1, 1),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

