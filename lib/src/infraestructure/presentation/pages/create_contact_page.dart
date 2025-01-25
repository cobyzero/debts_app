import 'package:debts_app/core/barrels/packages_barrel.dart';
import 'package:debts_app/core/barrels/utils_barrel.dart';
import 'package:debts_app/core/barrels/widgets_barrel.dart';
import 'package:debts_app/src/infraestructure/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CreateContactPage extends StatelessWidget {
  const CreateContactPage({super.key});

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
            radius: 30.sp,
            backgroundColor: Palette.white,
            child: Icon(
              Icons.photo_camera_outlined,
              color: Palette.blackGrey,
              size: 30.sp,
            ),
          ).only(bottom: 9.h),
          const CustomInput(
            hintText: 'Nombre',
          ).only(bottom: 34.h),
          CustomButton(
            text: "Crear contacto",
            onTap: () {},
          ).only(bottom: 6.h),
        ],
      ).symmetric(horizontal: 5.w),
    );
  }
}
