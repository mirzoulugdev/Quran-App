// ignore_for_file: must_be_immutable

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran_app/core/utils/app_colors.dart';
import 'package:quran_app/features/surahs/presentation/blocs/bloc/surah_info_bloc.dart';
import 'package:quran_app/features/surahs/presentation/widgets/custom_sliver_appBar.dart';
import 'package:quran_app/features/surahs/presentation/widgets/custom_sliver_list.dart';
import 'package:quran_app/features/surahs/presentation/widgets/surah_banner.dart';

class SurahInfoScreen extends StatefulWidget {
  const SurahInfoScreen({super.key});

  @override
  State<SurahInfoScreen> createState() => _SurahInfoScreenState();
}

class _SurahInfoScreenState extends State<SurahInfoScreen> {
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
          BlocConsumer<SurahInfoBloc, SurahInfoState>(
            listener: (context, state) {
              if (state is SurahInfoLoading) {
                showDialog(
                  context: context,
                  builder: (context) {
                    return Padding(
                      padding: const EdgeInsets.all(100.0),
                      child: AlertDialog(
                        backgroundColor: Colors.transparent,
                        content: SizedBox(
                          height: 50.h,
                          width: 50.w,
                          child: Center(
                            child: CupertinoActivityIndicator(
                              radius: 15.r,
                              color: AppColors.whiteColor,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              } else if (state is SurahInfoSuccess) {
                Navigator.of(context).pop();
              }
            },
            builder: (context, state) {
              if (state is SurahInfoSuccess) {
                return SizedBox(
                  height: double.infinity,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical: 10.0,
                    ),
                    child: CustomScrollView(
                      slivers: [
                        CustomSliverAppbar(),
                        SurahBanner(
                          surahName: state.surahData.data.name,
                          surahEnglishName: state.surahData.data.englishName,
                          revelationType: state.surahData.data.revelationType,
                          numberOfAyahs:
                              state.surahData.data.numberOfAyahs.toString(),
                        ),
                        CustomSliverList(surahData: state.surahData),
                      ],
                    ),
                  ),
                );
              }

              return Container();
            },
          )
        ],
      ),
    );
  }
}
