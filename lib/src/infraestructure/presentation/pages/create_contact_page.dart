import 'dart:io';

import 'package:debts_app/core/barrels/packages_barrel.dart';
import 'package:debts_app/core/barrels/utils_barrel.dart';
import 'package:debts_app/core/barrels/widgets_barrel.dart';
import 'package:debts_app/core/utils/toast.dart';
import 'package:debts_app/src/domain/models/contact_model.dart';
import 'package:debts_app/src/infraestructure/blocs/contact_bloc/contact_bloc.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CreateContactPage extends StatefulWidget {
  const CreateContactPage({super.key});

  @override
  State<CreateContactPage> createState() => _CreateContactPageState();
}

class _CreateContactPageState extends State<CreateContactPage> {
  final TextEditingController _nameController = TextEditingController();
  XFile? _image;

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
          GestureDetector(
            onTap: _pickImage,
            child: CircleAvatar(
              radius: 30.sp,
              backgroundImage: _image != null
                  ? FileImage(
                      File(_image!.path),
                    )
                  : null,
              backgroundColor: Palette.white,
              child: _image != null
                  ? null
                  : Icon(
                      Icons.photo_camera_outlined,
                      color: Palette.blackGrey,
                      size: 30.sp,
                    ),
            ).only(bottom: 9.h),
          ),
          CustomInput(
            hintText: 'Nombre',
            controller: _nameController,
          ).only(bottom: 34.h),
          CustomButton(
            text: "Crear contacto",
            onTap: _saveContact,
          ).only(bottom: 6.h),
        ],
      ).symmetric(horizontal: 5.w),
    );
  }

  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }

  void _saveContact() {
    if (_image == null || _nameController.text.isEmpty) {
      context.toast("Todos los campos son requeridos");
      return;
    }
    final contact = ContactModel(
      id: 0,
      name: _nameController.text,
      photoUrl: _image!.path,
    );
    context.read<ContactBloc>().add(AddContactEvent(contact: contact));
    Navigator.pop(context);
  }
}
