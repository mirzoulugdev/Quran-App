import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:just_audio/just_audio.dart';
import 'package:quran_app/core/utils/app_colors.dart';
import 'package:quran_app/core/utils/app_icons.dart';
import 'package:quran_app/features/surahs/data/models/surah_info_model.dart';

class CustomSliverList extends StatefulWidget {
  final SurahInfoModel surahData;
  const CustomSliverList({super.key, required this.surahData});

  @override
  State<CustomSliverList> createState() => _CustomSliverListState();
}

class _CustomSliverListState extends State<CustomSliverList> {
  int? playingSurahIndex;
  final _audioPlayer = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: widget.surahData.data.ayahs.length,
      itemBuilder: (context, index) {
        final bool isPlaying = playingSurahIndex == index;
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
          child: Column(
            children: [
              Container(
                width: double.infinity.w,
                height: 50.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors.darkBlue,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 30.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.r),
                          color: AppColors.lightBlue,
                        ),
                        child: Text(
                          "${index + 1}",
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: AppIcons.iconShare,
                          ),
                          IconButton(
                            onPressed: () async {
                              if (isPlaying) {
                                await _audioPlayer.stop();
                                setState(() => playingSurahIndex = null);
                              } else {
                                await _audioPlayer.setUrl(
                                  widget.surahData.data.ayahs[index].audio,
                                );
                                _audioPlayer.play();
                                setState(() => playingSurahIndex = index);
                                _audioPlayer.playerStateStream.listen((value) {
                                  if (value.processingState ==
                                      ProcessingState.completed) {
                                    setState(() => playingSurahIndex = null);
                                  }
                                });
                              }
                            },
                            icon: Icon(
                              isPlaying
                                  ? Icons.pause_outlined
                                  : Icons.play_arrow_rounded,
                              color: AppColors.lightBlue,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: AppIcons.iconSaved,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    widget.surahData.data.name,
                    style: TextStyle(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w800,
                      color: AppColors.whiteColor,
                    ),
                  ),
                ],
              ),
              // SizedBox(height: 20.h),
              // Text(
              //   "",
              //   style: TextStyle(
              //     fontSize: 16.sp,
              //     fontWeight: FontWeight.w400,
              //     color: AppColors.whiteColor,
              //   ),
              // )
            ],
          ),
        );
      },
    );
  }
}
