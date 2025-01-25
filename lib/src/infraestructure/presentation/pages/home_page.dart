import 'package:debts_app/core/barrels/packages_barrel.dart';
import 'package:debts_app/core/barrels/utils_barrel.dart';
import 'package:debts_app/core/barrels/widgets_barrel.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Palette.background,
        title: const Texts.normal(
          'Deudas',
          fontSize: 17,
          color: Palette.white,
        ),
      ),
      backgroundColor: Palette.background,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 35.h,
              backgroundColor: Palette.background,
              flexibleSpace: FlexibleSpaceBar(
                background: Column(
                  children: [
                    const Texts.bold(
                      'S/ 300.00',
                      fontSize: 23,
                      color: Palette.white,
                    ).only(bottom: 3.h, top: 3.h),
                    const ContactsWidget(),
                  ],
                ).symmetric(horizontal: 5.w),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 5.w,
                  vertical: 2.h,
                ),
                decoration: const BoxDecoration(
                  color: Palette.black,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(BORDER_RADIUS),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Texts.bold(
                      "Historial de deudas",
                      fontSize: 18,
                      color: Palette.white,
                    ).only(bottom: 3.h, top: 2.h),
                    ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      separatorBuilder: (context, index) => SizedBox(
                        height: 2.h,
                      ),
                      itemCount: 20,
                      itemBuilder: (context, index) {
                        return const TransactionsWidget();
                      },
                    ),
                  ],
                ),
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Center(
                child: const Texts.bold(
                  'No hay más contenido',
                  color: Palette.white,
                ).symmetric(vertical: 3.h),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
