import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:svg_flutter/svg_flutter.dart';
import 'package:video_call_app/widget/screen/chat/main_screen.dart';

import '../app_assets.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 32.w, horizontal: 21.w),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              margin: EdgeInsets.only(top: 20.w),
              height: 62.82.h,
              width: 348.19.w,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.58),
                      spreadRadius: 5,
                      blurRadius: 18,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  color: Color.fromARGB(255, 231, 232, 247),
                  borderRadius: BorderRadius.circular(8.97.r)),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(4.w),
                    decoration: BoxDecoration(
                        color: Color(0xFF4A5767),
                        borderRadius: BorderRadius.circular(6.r)),
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                      size: 14.sp,
                    ),
                  ),
                  SizedBox(
                    width: 55.6.w,
                  ),
                  Container(
                    height: 32.5.h,
                    padding: EdgeInsets.only(left: 10.w, right: 30.w),
                    decoration: BoxDecoration(
                        color: const Color(0xFF0060FF).withOpacity(.08),
                        borderRadius: BorderRadius.circular(20.r),
                        border: Border.all(color: Colors.black, width: 1)),
                    child: Row(
                      children: [
                        SvgPicture.asset(AppImage.link),
                        Padding(
                          padding: EdgeInsets.only(top: 8.0.w, bottom: 8.0.w),
                          child: const VerticalDivider(
                            color: Color(0xFF0060FF),
                          ),
                        ),
                        Text(
                          'cem-jnmt-',
                          style: GoogleFonts.inter(
                              color: Color(0xFF0060FF), fontSize: 11.sp),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MainChatScreen())),
                      child: SvgPicture.asset(
                        AppImage.chatHistory,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 42.19.h,
            ),
            Stack(children: [
              Image.asset(
                AppImage.mainimage,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              Positioned(
                  bottom: 18,
                  left: 3.0,
                  right: 3.0,
                  child: SvgPicture.asset(
                    AppImage.onBodyImage,
                    width: 319.48.w,
                  )),
            ]),
            SizedBox(
              height: 21.54.h,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    AppImage.subImage1,
                    height: 74.93.h,
                    width: 78.45.w,
                  ),
                  SizedBox(
                    width: 11.46.w,
                  ),
                  Image.asset(
                    AppImage.subImage2,
                    height: 74.93.h,
                    width: 78.45.w,
                  ),
                  SizedBox(
                    width: 11.46.w,
                  ),
                  Image.asset(
                    AppImage.subImage3,
                    height: 74.93.h,
                    width: 78.45.w,
                  ),
                  SizedBox(
                    width: 11.46.w,
                  ),
                  Image.asset(
                    AppImage.subImage4,
                    height: 74.93.h,
                    width: 78.45.w,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 29.24.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 27.w),
              margin: EdgeInsets.only(top: 20.w),
              width: 348.19.w,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.58),
                      spreadRadius: 5,
                      blurRadius: 18,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  color: const Color.fromARGB(255, 243, 244, 247),
                  borderRadius: BorderRadius.circular(8.97.r)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  smoothContainer(
                      left: 10.w,
                      image: AppImage.mic,
                      color: const Color(0xFF0060FF),
                      pad: 12.w),
                  smoothContainer(
                      image: AppImage.video,
                      color: const Color(0xFF0060FF),
                      pad: 12.w),
                  Container(
                    padding: EdgeInsets.all(10.w),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Text('End Call',
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 10.sp)),
                  ),
                  smoothContainer(
                      left: 10.w,
                      image: AppImage.download,
                      color: const Color(0xFFDFEBFF),
                      pad: 12.w),
                  smoothContainer(
                      image: AppImage.moreHor,
                      color: const Color(0xFFDFEBFF),
                      pad: 20.w),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  smoothContainer(
          {String? image, Color? color, double? pad, double left = 0.0}) =>
      Container(
        padding: EdgeInsets.all(pad!),
        margin: EdgeInsets.only(right: 10.w, left: left),
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        child: SvgPicture.asset(
          image!,
        ),
      );
}
