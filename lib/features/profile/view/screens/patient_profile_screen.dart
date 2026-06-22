import 'package:flutter/material.dart';

import '../../../../core/consts/strings.dart';
import '../../../../core/theme/colors.dart';
import '../../../auth/view/widgets/custom_text_field.dart';
import '../../../auth/view/widgets/custom_button.dart';
import '../widgets/patient_profile_widgets.dart';

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

  @override
  void dispose() {
    _birthDateController.dispose();
    _ageController.dispose();
    super.dispose();
  }

  Future<void> _selectBirthDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now().subtract(const Duration(days: 365 * 25)),
      firstDate: DateTime(1920),
      lastDate: DateTime.now(),
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

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 15),

              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: AppColors.dotInactive.withValues(alpha: 0.4),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.05),
                      blurRadius: 6,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: const Icon(
                  Icons.person_pin_rounded,
                  size: 65,
                  color: AppColors.medical,
                ),
              ),

              const SizedBox(height: 25),

              Text(
                PatientProfileStrings.patientProfileTitle,
                style: theme.textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                PatientProfileStrings.patientProfileSubtitle,
                style: theme.textTheme.bodyLarge,
              ),
              const SizedBox(height: 30),

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
              const SizedBox(height: 20),

              ProfileCheckboxRow(
                title: PatientProfileStrings.smokerQuestion,
                value: _isSmoker,
                onChanged: (val) => setState(() => _isSmoker = val!),
              ),
              ProfileCheckboxRow(
                title: PatientProfileStrings.diabetesQuestion,
                value: _hasDiabetes,
                onChanged: (val) => setState(() => _hasDiabetes = val!),
              ),
              ProfileCheckboxRow(
                title: PatientProfileStrings.hypertensionQuestion,
                value: _hasHypertension,
                onChanged: (val) => setState(() => _hasHypertension = val!),
              ),

              if (_gender == 'female')
                ProfileCheckboxRow(
                  title: PatientProfileStrings.pregnantQuestion,
                  value: _isPregnant,
                  onChanged: (val) => setState(() => _isPregnant = val!),
                ),

              const SizedBox(height: 30),

              CustomButton(
                text: PatientProfileStrings.saveProfileButton,
                onPressed: () {},
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
