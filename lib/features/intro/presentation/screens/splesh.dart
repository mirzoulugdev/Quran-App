import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SpleshScreeen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: Future.delayed(Duration(seconds: 3)),
        builder: (context, snapshot) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          );
  
          return Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                "assets/images/img1.png",
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 500.h,
                left: (270.w - 150.w) / 2,
                child: Image.asset(
                  "assets/images/quron.png",
                  height: 250.h,
                  width: 250.w,
                ),
              ),
              Positioned(
                bottom: 480.h,
                left: (350.w - 150.w) / 2,
                child: Text(
                  "Quran Kareem",
                  style: TextStyle(
                    fontSize: 26.sp,
                    fontFamily: 'Almendra',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                bottom: 460.h,
                left: (600.w - 150.w) / 2,
                child: Text(
                  "No Ads",
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff64CDFB),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Welcome to the Next Screen!",
          style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
