import 'package:expense_tracking/shared/AppText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
class CustomAppBar extends StatelessWidget {
  final String tilte;
  const CustomAppBar({
    super.key,
    required this.tilte
  });

  @override
  Widget build(BuildContext context) {
    return Container(
                margin: EdgeInsets.only(top: 12.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/menu-svgrepo-com.svg",
                          width: 30.w,
                          height: 30.w,
                        ),
                        SizedBox(width: 22.w,),
                        AppText(text: tilte ,size: 27.sp,)
                      ],
                    ),
                    Container(
                      width: 37.w,
                      height: 37.w,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(13.r),
                        image: DecorationImage(image: AssetImage("assets/icons/pexels-pixabay-220453.jpg"),fit:BoxFit.cover)
                      ),
                    )
                  ],
                ),
              );
  }
}
