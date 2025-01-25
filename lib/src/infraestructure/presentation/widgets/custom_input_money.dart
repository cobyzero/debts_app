import 'package:debts_app/core/barrels/packages_barrel.dart';
import 'package:debts_app/core/barrels/utils_barrel.dart';
import 'package:flutter/material.dart';

class CustomInputMoney extends StatefulWidget {
  const CustomInputMoney({super.key, required this.controller});
  final TextEditingController controller;

  @override
  State<CustomInputMoney> createState() => _CustomInputMoneyState();
}

class _CustomInputMoneyState extends State<CustomInputMoney> {
  int width = 28;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width.w,
      child: TextFormField(
        onChanged: (value) => setState(() => width = value.length + 33),
        autofocus: true,
        controller: widget.controller,
        keyboardType: const TextInputType.numberWithOptions(
          decimal: true,
        ),
        style: TextStyle(
          color: Palette.white,
          fontSize: 27.sp,
        ),
        decoration: InputDecoration(
          hintText: '0',
          hintStyle: TextStyle(
            color: Palette.white,
            fontSize: 27.sp,
          ),
          prefixIcon: Icon(
            Icons.attach_money,
            color: Palette.white,
            size: 28.sp,
          ),
          border: const UnderlineInputBorder(borderSide: BorderSide.none),
        ),
      ),
    );
  }
}
