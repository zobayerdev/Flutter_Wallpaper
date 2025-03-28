import 'package:flutter/material.dart';
import 'package:wallpaper_hub/assets_helper/app_fonts.dart';
import '../helpers/navigation_service.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title,
    this.onCallBack,
    this.leadingIconUnVisible = false,
    this.actions,
    this.isCenterd = false,
  });

  final String? title;
  final VoidCallback? onCallBack;
  final bool leadingIconUnVisible;
  final List<Widget>? actions;
  final bool isCenterd;

  @override
  Widget build(BuildContext context) {
    return AppBar(

      automaticallyImplyLeading: false,
      backgroundColor: Colors.blueGrey,
      centerTitle: isCenterd,
      title: Text(
        title ?? '',
        style: TextFontStyle.textStyle18w600Poppins.copyWith(color: Colors.white),
      ),
      leading: leadingIconUnVisible
          ? null
          : Padding(
        padding: const EdgeInsets.all(14),
        child: InkWell(
          onTap: () {
            if (onCallBack != null) {
              onCallBack!();
            } else {
              NavigationService.goBack();
            }
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 20,
          ),
        ),
      ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
