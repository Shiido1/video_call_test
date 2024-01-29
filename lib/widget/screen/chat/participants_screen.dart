import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../../app_assets.dart';

// ignore: must_be_immutable
class ParticipantScreen extends StatelessWidget {
  ParticipantScreen({super.key});
  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 700.h,
      child: RawScrollbar(
        thumbColor: const Color(0xFF0060FF),
        trackBorderColor: Colors.white,
        thickness: 4,
        crossAxisMargin: 6,
        thumbVisibility: true,
        controller: scrollController,
        child: SingleChildScrollView(
          controller: scrollController,
          padding: EdgeInsets.symmetric(horizontal: 22.24.w, vertical: 34.w),
          child: Column(
            children: [
              SizedBox(
                height: 6.h,
              ),
              const Divider(
                color: Colors.white,
              ),
              SizedBox(
                height: 20.h,
              ),
              participantWidget(
                  image: AppImage.gumgirl,
                  name: 'Dianne Russell',
                  micColor: Colors.red,
                  vidColor: const Color(0xFF0060FF)),
              participantWidget(
                  image: AppImage.guy,
                  name: 'Guy Hawkins',
                  micColor: Colors.red,
                  vidColor: const Color(0xFF0060FF)),
              participantWidget(
                  image: AppImage.kate,
                  name: 'Kathryn Murphy',
                  micColor: Colors.red,
                  vidColor: const Color(0xFF0060FF)),
              participantWidget(
                  image: AppImage.gumgirl,
                  name: 'Dianne Russell',
                  micColor: Colors.red,
                  vidColor: const Color(0xFF0060FF)),
              participantWidget(
                  image: AppImage.guy,
                  name: 'Guy Hawkins',
                  micColor: const Color(0xFF0060FF),
                  vidColor: const Color(0xFF0060FF)),
              participantWidget(
                  image: AppImage.kate,
                  name: 'Kathryn Murphy',
                  micColor: Colors.red,
                  vidColor: const Color(0xFF0060FF)),
              participantWidget(
                  image: AppImage.guy,
                  name: 'Guy Hawkins',
                  micColor: Colors.red,
                  vidColor: Colors.red),
              participantWidget(
                  image: AppImage.kate,
                  name: 'Kathryn Murphy',
                  micColor: Colors.red,
                  vidColor: const Color(0xFF0060FF)),
              participantWidget(
                image: AppImage.guy,
                name: 'Guy Hawkins',
                micColor: Colors.red,
                vidColor: Colors.red,
              ),
              participantWidget(
                  image: AppImage.kate,
                  name: 'Kathryn Murphy',
                  micColor: Colors.red,
                  vidColor: const Color(0xFF0060FF)),
              participantWidget(
                  image: AppImage.kate,
                  name: 'Kathryn Murphy',
                  micColor: Colors.red,
                  vidColor: const Color(0xFF0060FF)),
            ],
          ),
        ),
      ),
    );
  }

  participantWidget(
          {String? image, String? name, Color? micColor, Color? vidColor}) =>
      Container(
          width: double.infinity,
          margin: EdgeInsets.only(bottom: 20.w),
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.w),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(38)),
          child: Row(
            children: [
              Image.asset(image!),
              SizedBox(
                width: 14.h,
              ),
              Text(name!,
                  style: GoogleFonts.inter(
                      color: const Color(0xFF25293B),
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp)),
              const Spacer(),
              SvgPicture.asset(
                AppImage.micturn,
                // ignore: deprecated_member_use
                color: micColor,
              ),
              SizedBox(
                width: 16.0.h,
              ),
              SvgPicture.asset(
                AppImage.vidcam,
                // ignore: deprecated_member_use
                color: vidColor,
              ),
            ],
          ));
}
