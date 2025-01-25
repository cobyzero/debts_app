import 'package:debts_app/core/barrels/packages_barrel.dart';
import 'package:debts_app/core/barrels/utils_barrel.dart';
import 'package:debts_app/src/infraestructure/presentation/pages/add_debt_page.dart';
import 'package:debts_app/src/infraestructure/presentation/pages/create_contact_page.dart';
import 'package:flutter/material.dart';

class ContactsWidget extends StatelessWidget {
  const ContactsWidget({super.key});
  final int maxContacts = 5;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 3.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(BORDER_RADIUS),
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
              itemCount: maxContacts + 1,
              itemBuilder: (context, index) {
                if (index == maxContacts) {
                  return GestureDetector(
                    onTap: () => onAddContact(context),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Palette.black,
                          radius: 20.sp,
                          child: const Icon(
                            Icons.add,
                            color: Palette.white,
                          ),
                        ).only(bottom: 1.h),
                        const Texts.normal("Agregar"),
                      ],
                    ).symmetric(horizontal: 2.w),
                  );
                }
                return GestureDetector(
                  onTap: () => onAddDebt(context),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Palette.white,
                        radius: 20.sp,
                      ).only(bottom: 1.h),
                      const Texts.normal("John Doe"),
                    ],
                  ).symmetric(horizontal: 2.w).only(left: index == 0 ? 5.w : 0),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  void onAddContact(BuildContext context) {
    showBottomSheet(
      context: context,
      backgroundColor: Palette.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(BORDER_RADIUS),
      ),
      builder: (context) => const CreateContactPage(),
    );
  }

  void onAddDebt(BuildContext context) {
    showBottomSheet(
      context: context,
      backgroundColor: Palette.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(BORDER_RADIUS),
      ),
      builder: (context) => const AddDebtPage(),
    );
  }
}
