import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran_app/core/utils/app_colors.dart';
import 'package:quran_app/core/utils/app_icons.dart';
import 'package:quran_app/core/utils/app_images.dart';

class CustomSliverAppbar extends StatelessWidget {
  const CustomSliverAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      leading: IconButton(
        onPressed: () {},
        icon: AppIcons.iconMenu,
      ),
      actions: [
        Container(
          width: 40.w,
          height: 40.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.r),
            color: AppColors.backgroundColor,
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 0),
                color: AppColors.mainColor,
                blurRadius: 10,
              )
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50.r),
            child: Image.asset(
              AppImages.profileImage,
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }
}
