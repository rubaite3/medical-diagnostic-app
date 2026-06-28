import 'package:flutter/material.dart';
import 'dart:io';

import '../../../../core/consts/strings.dart';
import '../../../auth/view/widgets/custom_text_field.dart';
import '../../../auth/view/widgets/custom_button.dart';
import '../widgets/patient_profile_widgets.dart';
import '../widgets/profile_image_picker_widget.dart';

class PatientProfileScreen extends StatefulWidget {
  const PatientProfileScreen({super.key});

  @override
  State<PatientProfileScreen> createState() => _PatientProfileScreenState();
}

class _PatientProfileScreenState extends State<PatientProfileScreen> {
  final TextEditingController _birthDateController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();

  String _gender = 'male';
  String _activityLevel = 'moderate';
  bool _isSmoker = false;
  bool _hasDiabetes = false;
  bool _hasHypertension = false;
  bool _isPregnant = false;
  File? _profileImage;

  @override
  void dispose() {
    _birthDateController.dispose();
    _ageController.dispose();
    super.dispose();
  }

  Future<void> _selectBirthDate(BuildContext context) async {
    final theme = Theme.of(context);
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now().subtract(const Duration(days: 365 * 25)),
      firstDate: DateTime(1920),
      lastDate: DateTime.now(),
      builder: (context, child) {
        return Theme(
          data: theme.copyWith(
            colorScheme: theme.colorScheme, 
          ),
          child: child!,
        );
      },
    );
    if (picked != null) {
      setState(() {
        _birthDateController.text =
            "${picked.year}-${picked.month.toString().padLeft(2, '0')}-${picked.day.toString().padLeft(2, '0')}";

        int age = DateTime.now().year - picked.year;
        if (DateTime.now().month < picked.month ||
            (DateTime.now().month == picked.month &&
                DateTime.now().day < picked.day)) {
          age--;
        }
        _ageController.text = age.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.surface, 
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              
              
              ProfileImagePicker(
                initialImage: _profileImage,
                onImageSelected: (File? image) {
                  setState(() {
                    _profileImage = image;
                  });
                },
              ),

              const SizedBox(height: 25),

              Text(
                PatientProfileStrings.patientProfileTitle,
                textAlign: TextAlign.center,
                style: theme.textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: colorScheme.onSurface, 
                ),
              ),
              const SizedBox(height: 8),
              Text(
                PatientProfileStrings.patientProfileSubtitle,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyLarge?.copyWith(
                  color: colorScheme.onSurfaceVariant, 
                ),
              ),
              const SizedBox(height: 35),

          
              GestureDetector(
                onTap: () => _selectBirthDate(context),
                child: AbsorbPointer(
                  child: CustomTextField(
                    hintText: PatientProfileStrings.birthDateHint,
                    prefixIcon: Icons.cake_outlined,
                    controller: _birthDateController,
                  ),
                ),
              ),
              const SizedBox(height: 16),

              CustomTextField(
                hintText: PatientProfileStrings.ageHint,
                prefixIcon: Icons.calendar_today_outlined,
                controller: _ageController,
              ),
              const SizedBox(height: 16),

              ProfileDropdownField(
                hint: PatientProfileStrings.genderHint,
                value: _gender,
                items: const [
                  DropdownMenuItem(value: 'male', child: Text('Male')),
                  DropdownMenuItem(value: 'female', child: Text('Female')),
                ],
                onChanged: (value) {
                  setState(() {
                    _gender = value!;
                    if (_gender == 'male') _isPregnant = false;
                  });
                },
              ),
              const SizedBox(height: 16),

              ProfileDropdownField(
                hint: PatientProfileStrings.activityLevelHint,
                value: _activityLevel,
                items: const [
                  DropdownMenuItem(
                    value: 'sedentary',
                    child: Text('Sedentary (Low Activity)'),
                  ),
                  DropdownMenuItem(
                    value: 'moderate',
                    child: Text('Moderate Activity'),
                  ),
                  DropdownMenuItem(
                    value: 'active',
                    child: Text('Highly Active'),
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    _activityLevel = value!;
                  });
                },
              ),
              
              const SizedBox(height: 24),
              
              // Health Questions Section
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4, bottom: 8),
                  child: Text(
                    "Medical History",
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: colorScheme.primary, 
                    ),
                  ),
                ),
              ),
              
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: colorScheme.surfaceContainerHighest.withValues(alpha: 0.3), 
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: colorScheme.outline.withValues(alpha: 0.2),
                  ),
                ),
                child: Column(
                  children: [
                    ProfileCheckboxRow(
                      title: PatientProfileStrings.smokerQuestion,
                      value: _isSmoker,
                      onChanged: (val) => setState(() => _isSmoker = val!),
                    ),
                    Divider(height: 1, indent: 45, color: colorScheme.outline.withValues(alpha: 0.1)),
                    ProfileCheckboxRow(
                      title: PatientProfileStrings.diabetesQuestion,
                      value: _hasDiabetes,
                      onChanged: (val) => setState(() => _hasDiabetes = val!),
                    ),
                    Divider(height: 1, indent: 45, color: colorScheme.outline.withValues(alpha: 0.1)),
                    ProfileCheckboxRow(
                      title: PatientProfileStrings.hypertensionQuestion,
                      value: _hasHypertension,
                      onChanged: (val) => setState(() => _hasHypertension = val!),
                    ),
                    if (_gender == 'female') ...[
                      Divider(height: 1, indent: 45, color: colorScheme.outline.withValues(alpha: 0.1)),
                      ProfileCheckboxRow(
                        title: PatientProfileStrings.pregnantQuestion,
                        value: _isPregnant,
                        onChanged: (val) => setState(() => _isPregnant = val!),
                      ),
                    ],
                  ],
                ),
              ),

              const SizedBox(height: 40),

              CustomButton(
                text: PatientProfileStrings.saveProfileButton,
                onPressed: () {
               
                },
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

