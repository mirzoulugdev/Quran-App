import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran_app/core/utils/app_colors.dart';

class SurahsScreen extends StatefulWidget {
  const SurahsScreen({super.key});

  @override
  State<SurahsScreen> createState() => _SurahsScreenState();
}

class _SurahsScreenState extends State<SurahsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        ],
      ),
    );
  }
}
