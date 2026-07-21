import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:medical_diagnostic_app1/core/consts/api_consts.dart';
import 'package:medical_diagnostic_app1/core/enums/enums.dart';
import 'package:medical_diagnostic_app1/core/utils/utils.dart';
import 'package:medical_diagnostic_app1/features/auth/controllers/auth_bloc/auth_bloc.dart';
import 'package:medical_diagnostic_app1/generated/l10n.dart';

import '../../../../core/theme/colors.dart';

class ProfileImagePicker extends StatefulWidget {
  final Function(File?) onImageSelected;

  const ProfileImagePicker({super.key, required this.onImageSelected});

  @override
  State<ProfileImagePicker> createState() => _ProfileImagePickerState();
}

class _ProfileImagePickerState extends State<ProfileImagePicker> {
  File? _selectedImage;
  final ImagePicker _imagePicker = ImagePicker();

  @override
  void initState() {
    super.initState();
  }

  Future<void> _pickImageFromGallery() async {
    try {
      final XFile? pickedFile = await _imagePicker.pickImage(
        source: ImageSource.gallery,
        imageQuality: 80,
        maxWidth: 512,
        maxHeight: 512,
      );

      if (pickedFile != null) {
        setState(() {
          _selectedImage = File(pickedFile.path);
        });
        widget.onImageSelected(_selectedImage);
      }
    } catch (e) {
      _showErrorSnackBar(S.of(context).profileImagePickFailed);
    }
  }

  Future<void> _pickImageFromCamera() async {
    try {
      final XFile? pickedFile = await _imagePicker.pickImage(
        source: ImageSource.camera,
        imageQuality: 80,
        maxWidth: 512,
        maxHeight: 512,
      );

      if (pickedFile != null) {
        setState(() {
          _selectedImage = File(pickedFile.path);
        });
        widget.onImageSelected(_selectedImage);
      }
    } catch (e) {
      if (mounted) {
        Utils.showToast(
          context,
          level: -1,
          message: S.of(context).profileImageCaptureFailed,
        );
      }
    }
  }

  void _removeImage() {
    setState(() {
      _selectedImage = null;
    });
    widget.onImageSelected(null);
  }

  void _showImageSourceBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (BuildContext context) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 40,
                  height: 4,
                  margin: const EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                    color: AppColors.dotInactive,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.photo_library_rounded,
                    color: AppColors.medical,
                  ),
                  title: Text(
                    S.of(context).profileChooseFromGallery,
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    _pickImageFromGallery();
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.camera_alt_rounded,
                    color: AppColors.medical,
                  ),
                  title: Text(
                    S.of(context).profileTakePhoto,
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    _pickImageFromCamera();
                  },
                ),
                if (_selectedImage != null)
                  ListTile(
                    leading: const Icon(
                      Icons.delete_outline_rounded,
                      color: Colors.redAccent,
                    ),
                    title: Text(
                      S.of(context).profileRemovePhoto,
                      style: const TextStyle(
                        color: Colors.redAccent,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      _removeImage();
                    },
                  ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _showErrorSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.redAccent,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              color: AppColors.medicalLight,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: AppColors.medical.withValues(alpha: 0.15),
                  blurRadius: 15,
                  offset: const Offset(0, 8),
                ),
              ],
              border: Border.all(color: Colors.white, width: 4),
            ),
            child: GestureDetector(
              onTap: _showImageSourceBottomSheet,
              child: BlocConsumer<AuthBloc, AuthState>(
                listener: (context, state) {
                  _selectedImage = null;
                },
                listenWhen: (previous, current) =>
                    previous.user?.avatar != current.user?.avatar,
                builder: (context, state) => ClipOval(
                  child: (state.user?.avatar != null && _selectedImage == null)
                      ? Image.network(state.user!.avatar!)
                      : _selectedImage != null
                      ? Image.file(_selectedImage!, fit: BoxFit.cover)
                      : const Icon(
                          Icons.person_rounded,
                          size: 75,
                          color: AppColors.medical,
                        ),
                ),
              ),
            ),
          ),
          // Upload Button
          GestureDetector(
            onTap: _showImageSourceBottomSheet,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: AppColors.medical,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 2),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.medical.withValues(alpha: 0.3),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: const Icon(
                Icons.camera_alt_rounded,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
