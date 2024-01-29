import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:svg_flutter/svg_flutter.dart';
import 'package:video_call_app/widget/screen/chat/chat_screen.dart';
import 'package:video_call_app/widget/screen/chat/participants_screen.dart';

import '../../app_assets.dart';

class MainChatScreen extends StatefulWidget {
  const MainChatScreen({super.key});

  @override
  State<MainChatScreen> createState() => _MainChatScreenState();
}

class _MainChatScreenState extends State<MainChatScreen> {
  bool isChat = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 35, 41, 47),
      body: Column(
        children: [
          SizedBox(
            height: 65.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              isChat == true
                  ? Container(
                      padding: EdgeInsets.fromLTRB(45.w, 17.w, 63.24.w, 11.w),
                      decoration: BoxDecoration(
                          color: const Color(0xFF49627D),
                          borderRadius: BorderRadius.circular(8.r)),
                      child: Text('Chat(4)',
                          style: GoogleFonts.dmSans(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 16.sp)),
                    )
                  : GestureDetector(
                      onTap: () => setState(() => isChat = true),
                      child: Text('Chat(4)',
                          style: GoogleFonts.dmSans(
                              color: const Color(0xFFAFAFAF),
                              fontWeight: FontWeight.w400,
                              fontSize: 16.sp)),
                    ),
              isChat == false
                  ? Container(
                      padding: EdgeInsets.fromLTRB(45.w, 17.w, 34.24.w, 11.w),
                      decoration: BoxDecoration(
                          color: const Color(0xFF49627D),
                          borderRadius: BorderRadius.circular(8.r)),
                      child: Text('Participant',
                          style: GoogleFonts.dmSans(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 16.sp)),
                    )
                  : GestureDetector(
                      onTap: () => setState(() => isChat = !isChat),
                      child: Text('Participant',
                          style: GoogleFonts.dmSans(
                              color: const Color(0xFFAFAFAF),
                              fontWeight: FontWeight.w400,
                              fontSize: 16.sp)),
                    ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          isChat
              ? Column(
                  children: [
                    SizedBox(
                      height: 600.h,
                      child: SingleChildScrollView(
                        padding: EdgeInsets.symmetric(
                            horizontal: 22.24.w, vertical: 34.w),
                        child: Column(
                          children: [
                            const Divider(
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 6.h,
                            ),
                            const ChatScreen(),
                            Align(
                              alignment: Alignment.topLeft,
                              child: SvgPicture.asset(
                                AppImage.isTyping,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.fromLTRB(19.w, 18.w, 10.24.w, 18.w),
                        margin: EdgeInsets.symmetric(horizontal: 22.w),
                        decoration: BoxDecoration(
                            color: const Color(0xFF49627D),
                            borderRadius: BorderRadius.circular(8.r)),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              AppImage.pickImage,
                            ),
                            SizedBox(
                              width: 10.h,
                            ),
                            SizedBox(
                              height: 30.h,
                              child: const VerticalDivider(
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 10.h,
                            ),
                            Text('Write message here',
                                style: GoogleFonts.alata(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.sp)),
                            const Spacer(),
                            Container(
                              alignment: Alignment.topRight,
                              padding: EdgeInsets.all(12.w),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(6.r)),
                              child: SvgPicture.asset(
                                AppImage.send,
                              ),
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 10.h,
                    ),
                  ],
                )
              : ParticipantScreen(),
        ],
      ),
    );
  }
}
