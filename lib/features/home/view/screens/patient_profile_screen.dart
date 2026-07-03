import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:medical_diagnostic_app1/core/utils/utils.dart';
import 'package:medical_diagnostic_app1/features/auth/controllers/auth_bloc/auth_bloc.dart';
import 'package:medical_diagnostic_app1/features/auth/repos/requests/profile/update_profile_request.dart';
import 'package:medical_diagnostic_app1/features/home/view/controllers/cubit/patient_profile_cubit.dart';
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
  @override
  void initState() {
    super.initState();
    _patientProfileCubit = PatientProfileCubit(
      user: context.read<AuthBloc>().state.user!,
    );
    updateUser();
  }

  void updateProfile() {
    final authUser = context.read<AuthBloc>().state.user;
    final profileUser = _patientProfileCubit.state.user;

    if (profileUser != authUser) {
      context.read<AuthBloc>().add(
        AuthEvent.updateProfile(
          UpdateProfileRequest(
            avatar: (profileUser.avatar ?? "").contains('http')
                ? null
                : profileUser.avatar,
            activityLevel: profileUser.activityLevel,
            birthDate: profileUser.birthDate,
            gender: profileUser.gender,
            hasDiabetes: profileUser.hasDiabetes,
            hasHypertension: profileUser.hasHypertension,
            isPregnant: profileUser.isPregnant,
            isSmoker: profileUser.isSmoker,
          ),
        ),
      );
    } else {
      Utils.showToast(context, message: "No changes");
    }
  }

  void updateUser() {
    final authUser = context.read<AuthBloc>().state.user;
    final date = authUser?.birthDate;
    if (date != null) {
      birthDate = date;
      int age = DateTime.now().year - date.year;
      if (DateTime.now().month < date.month ||
          (DateTime.now().month == date.month &&
              DateTime.now().day < date.day)) {
        age--;
        _ageController.text = age.toString();
      }
      _birthDateController.text = DateFormat(
        DateFormat.YEAR_ABBR_MONTH_WEEKDAY_DAY,
      ).format(date);
    } else {
      _birthDateController.clear();
      _ageController.clear();
    }
    _patientProfileCubit.updateUser(authUser);
  }

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
          data: theme.copyWith(colorScheme: theme.colorScheme),
          child: child!,
        );
      },
    );
    if (picked != null) {
      _patientProfileCubit.updateUser(
        _patientProfileCubit.state.user.copyWith(birthDate: picked),
      );
      _birthDateController.text = DateFormat(
        DateFormat.YEAR_ABBR_MONTH_WEEKDAY_DAY,
      ).format(picked);

      int age = DateTime.now().year - picked.year;
      if (DateTime.now().month < picked.month ||
          (DateTime.now().month == picked.month &&
              DateTime.now().day < picked.day)) {
        age--;
      }
      _ageController.text = age.toString();
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

              BlocSelector<AuthBloc, AuthState, String>(
                selector: (state) => state.user?.avatar ?? "",
                builder: (context, state) => ProfileImagePicker(
                  onImageSelected: (File? image) {
                    if (image != null) {
                      _patientProfileCubit.updateUser(
                        _patientProfileCubit.state.user.copyWith(
                          avatar: image.path,
                        ),
                      );
                    }
                  },
                ),
              ),

              BlocListener<AuthBloc, AuthState>(
                listenWhen: (previous, current) => !current.op.isNeutral,
                listener: (context, state) {
                  Utils.showToast(
                    context,
                    message: state.statusMessage,
                    level: Utils.mapOp(state.op),
                  );
                  if (state.op.isSuccess) {
                    updateUser();
                  }
                },
                child: const SizedBox(height: 25),
              ),

              BlocSelector<PatientProfileCubit, PatientProfileState, String>(
                selector: (state) => state.user.fullName ?? "Patient",
                bloc: _patientProfileCubit,
                builder: (context, state) => Text(
                  state[0].toUpperCase() +
                      state.substring(1) +
                      PatientProfileStrings.patientProfileTitle,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: colorScheme.onSurface,
                  ),
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
                  child:
                      BlocSelector<
                        PatientProfileCubit,
                        PatientProfileState,
                        DateTime
                      >(
                        bloc: _patientProfileCubit,
                        selector: (state) =>
                            state.user.birthDate ?? DateTime.now(),
                        builder: (context, state) => CustomTextField(
                          hintText: PatientProfileStrings.birthDateHint,
                          prefixIcon: Icons.cake_outlined,
                          controller: _birthDateController,
                        ),
                      ),
                ),
              ),
              const SizedBox(height: 16),

              BlocSelector<PatientProfileCubit, PatientProfileState, DateTime>(
                bloc: _patientProfileCubit,
                selector: (state) => state.user.birthDate ?? DateTime.now(),
                builder: (context, state) => CustomTextField(
                  readOnly: true,
                  hintText: PatientProfileStrings.ageHint,
                  prefixIcon: Icons.calendar_today_outlined,
                  controller: _ageController,
                ),
              ),
              const SizedBox(height: 16),

              BlocSelector<PatientProfileCubit, PatientProfileState, String>(
                bloc: _patientProfileCubit,
                selector: (state) {
                  return state.user.gender ?? "male";
                },
                builder: (context, state) => ProfileDropdownField(
                  hint: PatientProfileStrings.genderHint,
                  value: state,
                  items: const [
                    DropdownMenuItem(value: 'male', child: Text('Male')),
                    DropdownMenuItem(value: 'female', child: Text('Female')),
                  ],
                  onChanged: (value) {
                    _patientProfileCubit.updateUser(
                      _patientProfileCubit.state.user.copyWith(
                        gender: value!,
                        isPregnant: false,
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 16),

              BlocSelector<PatientProfileCubit, PatientProfileState, String>(
                bloc: _patientProfileCubit,
                selector: (state) {
                  return state.user.activityLevel ?? "moderate";
                },

                builder: (context, state) => ProfileDropdownField(
                  hint: PatientProfileStrings.activityLevelHint,
                  value: state,
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
                    _patientProfileCubit.updateUser(
                      _patientProfileCubit.state.user.copyWith(
                        activityLevel: value!,
                      ),
                    );
                  },
                ),
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
                  color: colorScheme.surfaceContainerHighest.withValues(
                    alpha: 0.3,
                  ),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: colorScheme.outline.withValues(alpha: 0.2),
                  ),
                ),
                child: Column(
                  children: [
                    BlocSelector<
                      PatientProfileCubit,
                      PatientProfileState,
                      bool
                    >(
                      bloc: _patientProfileCubit,
                      selector: (state) => state.user.isSmoker ?? false,
                      builder: (context, state) => ProfileCheckboxRow(
                        title: PatientProfileStrings.smokerQuestion,
                        value: state,
                        onChanged: (val) {
                          _patientProfileCubit.updateUser(
                            _patientProfileCubit.state.user.copyWith(
                              isSmoker: val,
                            ),
                          );
                        },
                      ),
                    ),
                    Divider(
                      height: 1,
                      indent: 45,
                      color: colorScheme.outline.withValues(alpha: 0.1),
                    ),
                    BlocSelector<
                      PatientProfileCubit,
                      PatientProfileState,
                      bool
                    >(
                      bloc: _patientProfileCubit,
                      selector: (state) => state.user.hasDiabetes ?? false,
                      builder: (context, state) => ProfileCheckboxRow(
                        title: PatientProfileStrings.diabetesQuestion,
                        value: state,
                        onChanged: (val) {
                          _patientProfileCubit.updateUser(
                            _patientProfileCubit.state.user.copyWith(
                              hasDiabetes: val,
                            ),
                          );
                        },
                      ),
                    ),
                    Divider(
                      height: 1,
                      indent: 45,
                      color: colorScheme.outline.withValues(alpha: 0.1),
                    ),
                    BlocSelector<
                      PatientProfileCubit,
                      PatientProfileState,
                      bool
                    >(
                      bloc: _patientProfileCubit,
                      selector: (state) => state.user.hasHypertension ?? false,
                      builder: (context, state) => ProfileCheckboxRow(
                        title: PatientProfileStrings.hypertensionQuestion,
                        value: state,
                        onChanged: (val) {
                          _patientProfileCubit.updateUser(
                            _patientProfileCubit.state.user.copyWith(
                              hasHypertension: val,
                            ),
                          );
                        },
                      ),
                    ),
                    BlocSelector<
                      PatientProfileCubit,
                      PatientProfileState,
                      bool
                    >(
                      bloc: _patientProfileCubit,
                      selector: (state) =>
                          (state.user.gender ?? "male") == "male",
                      builder: (context, state) {
                        return state
                            ? SizedBox()
                            : Column(
                                children: [
                                  Divider(
                                    height: 1,
                                    indent: 45,
                                    color: colorScheme.outline.withValues(
                                      alpha: 0.1,
                                    ),
                                  ),
                                  BlocSelector<
                                    PatientProfileCubit,
                                    PatientProfileState,
                                    bool
                                  >(
                                    bloc: _patientProfileCubit,
                                    selector: (state) =>
                                        state.user.isPregnant ?? false,
                                    builder: (context, state) =>
                                        ProfileCheckboxRow(
                                          title: PatientProfileStrings
                                              .pregnantQuestion,
                                          value: state,
                                          onChanged: (val) {
                                            _patientProfileCubit.updateUser(
                                              _patientProfileCubit.state.user
                                                  .copyWith(isPregnant: val),
                                            );
                                          },
                                        ),
                                  ),
                                ],
                              );
                      },
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 40),

              CustomButton(
                text: PatientProfileStrings.saveProfileButton,
                onPressed: updateProfile,
              ),
              const SizedBox(height: 30),
              CustomButton(
                text: PatientProfileStrings.resetProfileButton,
                onPressed: updateUser,
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  final TextEditingController _birthDateController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  late final PatientProfileCubit _patientProfileCubit;
  DateTime? birthDate;
  File? _profileImage;
}
