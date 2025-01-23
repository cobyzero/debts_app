import 'package:debts_app/core/barrels/packages_barrel.dart';
import 'package:debts_app/core/barrels/utils_barrel.dart';
import 'package:flutter/material.dart';

class TransactionsWidget extends StatelessWidget {
  const TransactionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 17.sp,
        ).only(right: 3.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Texts.normal(
                "John Doe",
                color: Palette.white,
              ).only(bottom: 1.h),
              const Texts.normal(
                "S/ 300.00",
                color: Palette.grey,
              ),
            ],
          ),
        ),
        const Texts.normal(
          "- S/ 300.00",
          color: Palette.white,
        ),
      ],
    );
  }
}
