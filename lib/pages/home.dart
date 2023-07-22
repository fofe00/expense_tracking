import 'package:expense_tracking/shared/AppText.dart';
import 'package:expense_tracking/shared/expence_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../shared/custom_app_bar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(onPressed: null,child: Icon(Icons.add,),backgroundColor: Colors.black,),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(left: 10.w, right: 10.w),
            child: Column(
              children: [
                const CustomAppBar(tilte: "Dashboard"),
                SizedBox(
                  height: 27.h,
                ),
                Container(
                  height: 137.h,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(42.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(28.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText(
                          text: "190 000",
                          size: 36.sp,
                          color: Colors.white,
                        ),
                        AppText(
                          text: "XAF",
                          size: 20.sp,
                          color: Colors.white70,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 27.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppText(
                      text: "All expenses",
                      size: 20.sp,
                      color: Colors.black,
                    ),
                    Container(
                      height: 20.h,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(7.r),
                      ),
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.w, right: 8.w),
                          child: AppText(
                            text: "View All",
                            color: Colors.black.withOpacity(0.4),
                            size: 15.sp,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: AppText(
                    text: "Today",
                    size: 15.sp,
                    color: Colors.grey.withOpacity(0.8),
                  ),
                ),
                ExpenseItem(
                  title: "Coffee",
                  desc: "With Alice and Yvan",
                  amount: "1500",
                  asset: "coffe-to-go-svgrepo-com.svg",
                ),
                ExpenseItem(
                  title: "Gift",
                  desc: "for ABoubakar & oumarou",
                  amount: "200",
                  asset: "gift-svgrepo-com.svg",
                ),
                ExpenseItem(
                  title: "Subscription",
                  desc: "Made with oumarou",
                  amount: "500",
                  asset: "email-svgrepo-com.svg",
                ),
                SizedBox(height: 10.h,),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: AppText(
                    text: "Yesterday",
                    size: 15.sp,
                    color: Colors.grey.withOpacity(0.8),
                  ),
                ),
                ExpenseItem(
                  title: "Coffee",
                  desc: "With Alice and Yvan",
                  amount: "1500",
                  asset: "coffe-to-go-svgrepo-com.svg",
                ),
                ExpenseItem(
                  title: "Gift",
                  desc: "for ABoubakar & oumarou",
                  amount: "200",
                  asset: "gift-svgrepo-com.svg",
                ),
                ExpenseItem(
                  title: "Subscription",
                  desc: "Made with oumarou",
                  amount: "500",
                  asset: "email-svgrepo-com.svg",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
