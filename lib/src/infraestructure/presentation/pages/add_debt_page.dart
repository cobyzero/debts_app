import 'package:debts_app/core/barrels/packages_barrel.dart';
import 'package:debts_app/core/barrels/utils_barrel.dart';
import 'package:debts_app/core/barrels/widgets_barrel.dart';
import 'package:flutter/material.dart';

class AddDebtPage extends StatelessWidget {
  const AddDebtPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: Palette.white,
                size: 20.sp,
              ),
            ),
          ).only(bottom: 3.h, top: 3.h),
          CircleAvatar(
            radius: 24.sp,
            backgroundColor: Palette.white,
            child: Icon(
              Icons.person,
              color: Palette.blackGrey,
              size: 22.sp,
            ),
          ).only(bottom: 2.h),
          const Texts.normal(
            "Sebastian :3",
            fontSize: 16,
            color: Palette.white,
          ).only(bottom: 5.h),
          CustomInputMoney(
            controller: TextEditingController(),
          ).only(bottom: 5.h),
          const CustomInput(hintText: "Descripcion").only(bottom: 15.h),
          CustomButton(
            text: "Agregar deuda",
            onTap: () {},
          ).only(bottom: 6.h),
        ],
      ).symmetric(horizontal: 5.w),
    );
  }
}
