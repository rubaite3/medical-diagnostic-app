import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/consts/strings.dart';
import '../../controllers/settings_cubit/settings_cubit.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  final List<Map<String, String>> languages = const [
    {'name': 'English', 'sub': '(United States)'},
    {'name': 'English', 'sub': '(United Kingdom)'},
    {'name': 'Deutsch', 'sub': '(Deutschland)'},
    {'name': 'Português', 'sub': '(Brasil)'},
    {'name': 'Español', 'sub': '(América Latina)'},
    {'name': 'Français', 'sub': '(France)'},
    {'name': 'Kiswahili', 'sub': '(Tanzania)'},
    {'name': 'Română', 'sub': '(România)'},
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SettingsCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(SettingsStrings.changeLanguage),
          centerTitle: true,
        ),
        body: BlocBuilder<SettingsCubit, SettingsState>(
          builder: (context, state) {
            return ListView.builder(
              padding: const EdgeInsets.only(top: 20),
              itemCount: languages.length,
              itemBuilder: (context, index) {
                final lang = languages[index];
                final fullName = '${lang['name']} ${lang['sub']}';
                final isSelected = state.currentLanguage == fullName;

                return InkWell(
                  onTap: () {
                    context.read<SettingsCubit>().changeLanguage(fullName);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Theme.of(context).colorScheme.outline.withValues(alpha: 0.1),
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.bodyLarge,
                            children: [
                              TextSpan(text: '${lang['name']} '),
                              TextSpan(
                                text: lang['sub'],
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                                ),
                              ),
                            ],
                          ),
                        ),
                        if (isSelected)
                          Icon(Icons.check, color: Theme.of(context).colorScheme.primary),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}