import 'package:expense_tracking/shared/AppText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
class ExpenseItem extends StatelessWidget {
  final String title;
  final String desc;
   String asset;
  String devise;
  final String amount;
   ExpenseItem({
    super.key,
    required this.title,
    required this.desc,
    required this.amount,
     this.asset="coffe-to-go-svgrepo-com.svg",
    this.devise="XAF",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 9.h),
      height: 64.h,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.1),
        borderRadius: BorderRadius.circular(17.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 45.w,
                width: 45.w,
                margin: EdgeInsets.only(left: 8.w),
                decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    "assets/icons/$asset",
                    width: 37.w,
                    height: 37.w,
                  ),
                ),
              ),
              SizedBox(
                width: 7.w,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    text: title,
                    color: Colors.black,
                    size: 15.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  AppText(
                    text: desc,
                    color: Colors.black.withOpacity(0.4),
                    size: 13.sp,
                  ),
                ],
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(right: 8.w),
            child: AppText(
              text: "$amount $devise",
              size: 15.sp,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
