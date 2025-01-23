import 'package:debts_app/core/barrels/packages_barrel.dart';
import 'package:debts_app/core/barrels/utils_barrel.dart';
import 'package:flutter/material.dart';

class ContactsWidget extends StatelessWidget {
  const ContactsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 3.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Palette.white, Palette.cyan, Palette.cyan2],
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Texts.normal("Añadir deuda a:").only(bottom: 2.h),
          SizedBox(
            width: double.infinity,
            height: 10.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Palette.white,
                      radius: 20.sp,
                    ).only(bottom: 1.h),
                    const Texts.normal("John Doe"),
                  ],
                ).symmetric(horizontal: 2.w).only(left: index == 0 ? 5.w : 0);
              },
            ),
          )
        ],
      ),
    );
  }
}
