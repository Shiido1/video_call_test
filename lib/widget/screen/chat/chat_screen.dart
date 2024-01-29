import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:svg_flutter/svg.dart';
import 'package:video_call_app/widget/app_assets.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(6.w),
          width: 248.w,
          decoration: BoxDecoration(
              color: const Color(0xFFDFEBFF),
              borderRadius: BorderRadius.circular(26)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 10.w),
                decoration: BoxDecoration(
                    color: const Color(0xFF49627D),
                    borderRadius: BorderRadius.circular(22)),
                child: Text('Group',
                    style: GoogleFonts.inter(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Text('Personal',
                    style: GoogleFonts.inter(
                        color: const Color(0xFF49627D),
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp)),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 2.6.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 128.82.w,
              child: const Divider(
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 6.w,
            ),
            Text('Meetings',
                style: GoogleFonts.alata(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp)),
            SizedBox(
              width: 12.w,
            ),
            SizedBox(
              width: 130.w,
              child: const Divider(
                color: Colors.white,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 16.h,
        ),
        chatForum(
          image: AppImage.caesy,
          name: 'Caesy',
          chatText: 'Hello Guys! Whats your opinion?',
        ),
        chatForum(
            image: AppImage.john,
            name: 'John',
            chatText: 'Images are better.',
            time: false),
        myChatForum(chatText: 'Yes, It will decrease the loading', name: 'You'),
        chatForum(
            image: AppImage.jack,
            name: 'Jack',
            width: 220.w,
            chatText:
                'Anyone is up for illustrations. I think there are less relatable images according to our brand.',
            time: false),
        chatForum(
          image: AppImage.caesy,
          name: 'Caesy',
          chatText: 'Hello Guys! Whats your opinion?',
        ),
        chatForum(
            image: AppImage.john,
            name: 'John',
            chatText: 'Images are better.',
            time: false),
      ],
    );
  }

  chatForum(
          {String? image,
          String? name,
          String? chatText,
          bool time = true,
          double width = 160}) =>
      Container(
        padding: EdgeInsets.only(bottom: 21.22.w),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              image!,
              width: 50.w,
              height: 50.h,
            ),
            SizedBox(
              width: 10.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name!,
                    style: GoogleFonts.alata(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp)),
                SizedBox(
                  height: 2.h,
                ),
                Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 9.w, horizontal: 9.w),
                    decoration: BoxDecoration(
                      color: const Color(0xFF4A5767),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10.0.w),
                          bottomRight: Radius.circular(10.0.w),
                          topLeft: Radius.circular(0.0.w),
                          bottomLeft: Radius.circular(10.0.w)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: width.w,
                          child: Text(chatText!,
                              style: GoogleFonts.alata(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp)),
                        ),
                        time
                            ? Text('12:02 pm',
                                style: GoogleFonts.lexendDeca(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 7.78.sp))
                            : const SizedBox.shrink()
                      ],
                    ))
              ],
            )
          ],
        ),
      );

  myChatForum({String? name, String? chatText}) => Container(
        padding: EdgeInsets.only(bottom: 21.22.w),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.asset(
              AppImage.doubleThick,
            ),
            SizedBox(
              width: 10.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(name!,
                    style: GoogleFonts.alata(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp)),
                SizedBox(
                  height: 2.h,
                ),
                Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 12.w, horizontal: 9.w),
                    decoration: BoxDecoration(
                      color: const Color(0xFF131B26),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(0.0.w),
                          bottomRight: Radius.circular(10.0.w),
                          topLeft: Radius.circular(10.0.w),
                          bottomLeft: Radius.circular(10.0.w)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(chatText!,
                            style: GoogleFonts.alata(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp)),
                        SizedBox(
                          width: 10.w,
                        ),
                        SvgPicture.asset(
                          AppImage.thumbsUp,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                      ],
                    ))
              ],
            )
          ],
        ),
      );
}
