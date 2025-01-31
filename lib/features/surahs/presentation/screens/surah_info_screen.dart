import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran_app/core/utils/app_colors.dart';
import 'package:quran_app/core/utils/app_icons.dart';
import 'package:quran_app/core/utils/app_images.dart';
import 'package:quran_app/features/surahs/presentation/widgets/surah_banner.dart';

class SurahInfoScreen extends StatelessWidget {
  const SurahInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Stack(
        children: [
          Align(
            alignment: Alignment(0.8, -1.1),
            child: Container(
              width: 200.w,
              height: 200.h,
              color: Colors.blue,
            ),
          ),
          Align(
            alignment: Alignment(-0.9, -0),
            child: Container(
              width: 200.w,
              height: 200.h,
              color: Colors.blue,
            ),
          ),
          Align(
            alignment: Alignment(1.2, 1),
            child: Container(
              width: 200.w,
              height: 200.h,
              color: AppColors.mainColor,
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 100,
              sigmaY: 100,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
            ),
          ),
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 10.0,
              ),
              child: CustomScrollView(
                slivers: [
                  SliverAppBar(
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
                  ),
                  SurahBanner(),
                  SliverList.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 10),
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity.w,
                              height: 50.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.r),
                                color: AppColors.darkBlue,
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    width: 30.w,
                                    height: 30.h,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(100.r),
                                      color: AppColors.lightBlue,
                                    ),
                                    child: Text(
                                      "$index",
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.whiteColor,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
