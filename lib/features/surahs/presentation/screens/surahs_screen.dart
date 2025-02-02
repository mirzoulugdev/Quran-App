import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran_app/core/utils/app_colors.dart';
import 'package:quran_app/core/utils/app_icons.dart';
import 'package:quran_app/core/utils/app_images.dart';
import 'package:quran_app/features/surahs/presentation/widgets/custom_listview.dart';

class SurahsScreen extends StatefulWidget {
  const SurahsScreen({super.key});

  @override
  State<SurahsScreen> createState() => _SurahsScreenState();
}

class _SurahsScreenState extends State<SurahsScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(
      length: 2,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Ensures TabBar works
      child: Scaffold(
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
                  ],
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset(
                    AppImages.surahQurana,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white.withOpacity(0.1),
                          border: Border.all(
                              color: Colors.blueAccent.withOpacity(0.5)),
                        ),
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            hintText: "Search Here",
                            hintStyle:
                                TextStyle(color: Colors.white.withOpacity(0.5)),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            suffixIcon: Padding(
                              padding: EdgeInsets.only(right: 20),
                              child: Icon(Icons.search,
                                  color: Colors.blueAccent, size: 24),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TabBar(
                    controller: _tabController,
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.white54,
                    indicatorColor: Colors.blueAccent,
                    indicatorWeight: 4,
                    indicatorSize: TabBarIndicatorSize.tab,
                    tabs: [
                      Tab(
                        text: "Surah",
                      ),
                      Tab(text: "Para"),
                    ],
                  ),
                ),
                CustomListviewWidget(
                  tabController: _tabController,
                  leading: 'assets/images/icon1.png',
                  title1: "Al-Fatiah",
                  title2: "Meccan 200 verses",
                  triling: "ةحتافلا",
                ),
                CustomListviewWidget(
                  tabController: _tabController,
                  leading: 'assets/images/icon2.png',
                  title1: "Al-Baqarah",
                  title2: "Medinian 286 verses",
                  triling: "ةرقبلا",
                ),
                CustomListviewWidget(
                  tabController: _tabController,
                  leading: 'assets/images/icon3.png',
                  title1: "Al 'Imran",
                  title2: "Meccan 200 verses",
                  triling: "ناﺮﻤﻋ لآ",
                ),
                CustomListviewWidget(
                  tabController: _tabController,
                  leading: 'assets/images/icon4.png',
                  title1: "An-Nisa",
                  title2: "Meccan 176 verses",
                  triling: "ءاسنلا",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
