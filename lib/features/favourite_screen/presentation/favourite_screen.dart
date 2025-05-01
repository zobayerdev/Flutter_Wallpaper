import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallpaper_hub/assets_helper/app_colors.dart';
import 'package:wallpaper_hub/assets_helper/app_fonts.dart';
import 'package:wallpaper_hub/assets_helper/app_icons.dart';
import 'package:wallpaper_hub/assets_helper/app_images.dart';
import 'package:wallpaper_hub/common_widgets/custom_textField.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  bool _isObscure = true;
  bool isLoading = false;
  final TextEditingController _searchController = TextEditingController();
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

                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Favorites",
                        style: TextFontStyle.textStyle15w600Poppins.copyWith(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: AppColors.white,
                        ),
                      ),
                      Text(
                        "Edit",
                        style: TextFontStyle.textStyle15w600Poppins.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: AppColors.c3B82F6,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Container(
                        height: 0.5,
                        width: 370,  // Adjust the width as needed
                        color: Colors.grey, // Divider color
                      ),
                    ],
                  ),


                  SizedBox(height: 20),
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

                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection:
                        Axis.horizontal, // Set horizontal scrolling
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 51, // Width of each item
                            height: 40, // Width of each item
                            decoration: BoxDecoration(
                              color: AppColors.c5778F6, // Item color
                              borderRadius:
                              BorderRadius.circular(30), // Border radius
                            ),
                            child: Center(
                              child: Text('All',
                                  style: TextFontStyle.textStyle15w500Poppins
                                      .copyWith(color: AppColors.white)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 84, // Width of each item
                            height: 40, // Width of each item
                            decoration: BoxDecoration(
                              color: AppColors.c30394A, // Item color
                              borderRadius:
                                  BorderRadius.circular(30), // Border radius
                            ),
                            child: Center(
                              child: Text('Nature',
                                  style: TextFontStyle.textStyle15w500Poppins
                                      .copyWith(color: AppColors.white)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 84, // Width of each item
                            height: 40, // Width of each item
                            decoration: BoxDecoration(
                              color: AppColors.c30394A, // Item color
                              borderRadius:
                                  BorderRadius.circular(30), // Border radius
                            ),
                            child: Center(
                              child: Text('Abstract',
                                  style: TextFontStyle.textStyle15w500Poppins
                                      .copyWith(color: AppColors.white)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 84, // Width of each item
                            height: 40, // Width of each item
                            decoration: BoxDecoration(
                              color: AppColors.c30394A, // Item color
                              borderRadius:
                                  BorderRadius.circular(30), // Border radius
                            ),
                            child: Center(
                              child: Text('Minimal',
                                  style: TextFontStyle.textStyle15w500Poppins
                                      .copyWith(color: AppColors.white)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 84, // Width of each item
                            height: 40, // Width of each item
                            decoration: BoxDecoration(
                              color: AppColors.c30394A, // Item color
                              borderRadius:
                                  BorderRadius.circular(30), // Border radius
                            ),
                            child: Center(
                              child: Text('Popular',
                                  style: TextFontStyle.textStyle15w500Poppins
                                      .copyWith(color: AppColors.white)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      /// 🔹 First Image with Logo & Text
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              AppImages.wallpaper_2,
                              height: 250,
                              width: 167,
                              fit: BoxFit.cover,
                            ),
                          ),

                          Positioned(
                            top: 8,
                            right: 8,
                            child: CircleAvatar(
                              backgroundColor: AppColors.c54585C,
                              radius: 20,
                              child: Icon(
                                Icons.favorite_border,
                                color: Colors.grey,
                                size: 20,
                              ),
                            ),
                          ),

                          /// 📷 Logo + Landscape Pro Text - Bottom Left
                          Positioned(
                            bottom: 8,
                            left: 5,
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      'Dark Forest',
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
                                    Text(
                                      'Landscape Pro',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
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
                                SizedBox(width: 45),
                                CircleAvatar(
                                  backgroundColor: Colors.white10,
                                  radius: 20,
                                  child: Icon(
                                    Icons.download,
                                    color: Colors.grey,
                                    size: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      SizedBox(width: 10),

                      ///🔹 Second Image with Different Text
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              AppImages.wallpaper_1,
                              height: 250,
                              width: 167,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            top: 8,
                            right: 8,
                            child: CircleAvatar(
                              backgroundColor: AppColors.c54585C,
                              radius: 20,
                              child: Icon(
                                Icons.favorite_border,
                                color: Colors.grey,
                                size: 20,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 8,
                            left: 5,
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      'Dark Forest',
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
                                    Text(
                                      'Landscape Pro',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
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
                                SizedBox(width: 45),
                                CircleAvatar(
                                  backgroundColor: Colors.white10,
                                  radius: 20,
                                  child: Icon(
                                    Icons.download,
                                    color: Colors.grey,
                                    size: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ],
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






// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:wallpaper_hub/assets_helper/app_colors.dart';
// import 'package:wallpaper_hub/assets_helper/app_fonts.dart';
// import 'package:wallpaper_hub/assets_helper/app_icons.dart';
// import 'package:wallpaper_hub/assets_helper/app_images.dart';
// import 'package:wallpaper_hub/common_widgets/custom_textField.dart';
//
// class FavouriteScreen extends StatefulWidget {
//   const FavouriteScreen({super.key});
//
//   @override
//   State<FavouriteScreen> createState() => _FavouriteScreenState();
// }
//
// class _FavouriteScreenState extends State<FavouriteScreen> {
//   bool _isObscure = true;
//   bool isLoading = false;
//   final TextEditingController _searchController = TextEditingController();
//
//   // List of wallpapers to be displayed
//   final List<Map<String, dynamic>> wallpapers = [
//     {'image': AppImages.wallpaper_1, 'title': 'Dark Forest', 'subtitle': 'Landscape Pro'},
//     {'image': AppImages.wallpaper_2, 'title': 'Mountain View', 'subtitle': 'Nature Photography'},
//     {'image': AppImages.wallpaper_1, 'title': 'Ocean Breeze', 'subtitle': 'Seaside Horizon'},
//     {'image': AppImages.wallpaper_2, 'title': 'Starry Night', 'subtitle': 'Cosmic View'},
//     {'image': AppImages.wallpaper_1, 'title': 'Desert Mirage', 'subtitle': 'Golden Sands'},
//     {'image': AppImages.wallpaper_2, 'title': 'Autumn Path', 'subtitle': 'Forest Trails'},
//     {'image': AppImages.wallpaper_1, 'title': 'Snowy Peaks', 'subtitle': 'Mountain Adventure'},
//     {'image': AppImages.wallpaper_2, 'title': 'City Lights', 'subtitle': 'Urban Jungle'},
//     {'image': AppImages.wallpaper_1, 'title': 'Sunny Meadows', 'subtitle': 'Countryside Charm'},
//     {'image': AppImages.wallpaper_2, 'title': 'Tropical Paradise', 'subtitle': 'Island Escape'},
//     {'image': AppImages.wallpaper_1, 'title': 'River Serenity', 'subtitle': 'Waterfall Wonders'},
//     {'image': AppImages.wallpaper_2, 'title': 'Vibrant Sunset', 'subtitle': 'Skyline Bliss'},
//   ];
//
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
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         "Favorites",
//                         style: TextFontStyle.textStyle15w600Poppins.copyWith(
//                           fontSize: 30,
//                           fontWeight: FontWeight.w600,
//                           color: AppColors.white,
//                         ),
//                       ),
//                       Text(
//                         "Edit",
//                         style: TextFontStyle.textStyle15w600Poppins.copyWith(
//                           fontSize: 14,
//                           fontWeight: FontWeight.w300,
//                           color: AppColors.c3B82F6,
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 15),
//                   Row(
//                     children: [
//                       Container(
//                         height: 0.5,
//                         width: 370,  // Adjust the width as needed
//                         color: Colors.grey, // Divider color
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
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   // Horizontal categories here as in the original code (optional)
//               SizedBox(
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
//                             width: 51, // Width of each item
//                             height: 40, // Width of each item
//                             decoration: BoxDecoration(
//                               color: AppColors.c5778F6, // Item color
//                               borderRadius:
//                               BorderRadius.circular(30), // Border radius
//                             ),
//                             child: Center(
//                               child: Text('All',
//                                   style: TextFontStyle.textStyle15w500Poppins
//                                       .copyWith(color: AppColors.white)),
//                             ),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Container(
//                             width: 84, // Width of each item
//                             height: 40, // Width of each item
//                             decoration: BoxDecoration(
//                               color: AppColors.c30394A, // Item color
//                               borderRadius:
//                                   BorderRadius.circular(30), // Border radius
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
//                             width: 84, // Width of each item
//                             height: 40, // Width of each item
//                             decoration: BoxDecoration(
//                               color: AppColors.c30394A, // Item color
//                               borderRadius:
//                                   BorderRadius.circular(30), // Border radius
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
//                             width: 84, // Width of each item
//                             height: 40, // Width of each item
//                             decoration: BoxDecoration(
//                               color: AppColors.c30394A, // Item color
//                               borderRadius:
//                                   BorderRadius.circular(30), // Border radius
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
//                             width: 84, // Width of each item
//                             height: 40, // Width of each item
//                             decoration: BoxDecoration(
//                               color: AppColors.c30394A, // Item color
//                               borderRadius:
//                                   BorderRadius.circular(30), // Border radius
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
//                   // ListView.builder for wallpapers
//                   SizedBox(
//                     height: 500, // Set a height for your ListView
//                     child: GridView.builder(
//                       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                         crossAxisCount: 2, // Two items per row
//                         crossAxisSpacing: 5, // Horizontal space between items
//                         mainAxisSpacing: 5, // Vertical space between items
//                       ),
//                       itemCount: 10, // Number of items in the list
//                       itemBuilder: (context, index) {
//                         final wallpaper = wallpapers[index]; // Access the wallpaper data
//                         return Padding(
//                           padding: const EdgeInsets.symmetric(vertical: 8.0),
//                           child: Stack(
//                             children: [
//                               ClipRRect(
//                                 borderRadius: BorderRadius.circular(10),
//                                 child: Image.asset(
//                                   wallpaper['image'],
//                                   height: 300,
//                                   width: 167,
//                                   fit: BoxFit.cover,
//                                 ),
//                               ),
//                               Positioned(
//                                 top: 8,
//                                 right: 8,
//                                 child: CircleAvatar(
//                                   backgroundColor: AppColors.c54585C,
//                                   radius: 20,
//                                   child: Icon(
//                                     Icons.favorite_border, // Favorite icon
//                                     color: Colors.red,
//                                     size: 20,
//                                   ),
//                                 ),
//                               ),
//                               Positioned(
//                                 bottom: 8,
//                                 left: 5,
//                                 child: Row(
//                                   children: [
//                                     Column(
//                                       children: [
//                                         Text(
//                                           wallpaper['title'], // Title from the list
//                                           style: TextStyle(
//                                             color: Colors.white,
//                                             fontWeight: FontWeight.bold,
//                                             fontSize: 14,
//                                             shadows: [
//                                               Shadow(
//                                                 blurRadius: 3,
//                                                 color: Colors.black,
//                                                 offset: Offset(1, 1),
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                         Text(
//                                           wallpaper['subtitle'], // Subtitle from the list
//                                           style: TextStyle(
//                                             color: Colors.white,
//                                             fontSize: 11,
//                                             shadows: [
//                                               Shadow(
//                                                 blurRadius: 3,
//                                                 color: Colors.black,
//                                                 offset: Offset(1, 1),
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                     SizedBox(width: 35),
//                                     CircleAvatar(
//                                       backgroundColor: Colors.white10,
//                                       radius: 20,
//                                       child: Icon(
//                                         Icons.download,
//                                         color: Colors.grey,
//                                         size: 20,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         );
//                       },
//                     ),
//                   )
//
//
//
//
//
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
