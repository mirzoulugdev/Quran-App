import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran_app/core/utils/app_colors.dart';
import 'package:quran_app/core/utils/app_icons.dart';
import 'package:quran_app/core/utils/app_images.dart';

class SurahBanner extends StatelessWidget {
  final String surahName;
  final String surahEnglishName;
  final String revelationType;
  final String numberOfAyahs;
  const SurahBanner({
    super.key,
    required this.surahName,
    required this.surahEnglishName,
    required this.revelationType,
    required this.numberOfAyahs,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: 15,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15.r),
              child: Image.asset(
                width: double.infinity.w,
                height: 150.h,
                fit: BoxFit.cover,
                AppImages.customContainer,
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  AppIcons.iconBook,
                  Column(
                    children: [
                      Text(
                        surahName,
                        style: TextStyle(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.whiteColor,
                        ),
                      ),
                      Text(
                        surahEnglishName,
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.whiteColor,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        spacing: 15,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            revelationType.toUpperCase(),
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColors.whiteColor,
                            ),
                          ),
                          Text(
                            "$numberOfAyahs VERSES",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColors.whiteColor,
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
