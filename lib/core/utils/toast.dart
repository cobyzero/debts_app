import 'package:debts_app/core/barrels/utils_barrel.dart';
import 'package:flutter/material.dart';

extension Toast on BuildContext {
  void toast(String message) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        showCloseIcon: true,
        content: Texts.normal(
          message,
          color: Palette.white,
        ),
      ),
    );
  }
}
