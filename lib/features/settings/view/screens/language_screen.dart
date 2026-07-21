import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_diagnostic_app1/core/controllers/locale_cubit/locale_cubit.dart';
import 'package:medical_diagnostic_app1/core/utils/utils.dart';
import '../../../../generated/l10n.dart';
import '../../controllers/settings_cubit/settings_cubit.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SettingsCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(S.of(context).changeLanguage),
          centerTitle: true,
        ),
        body: BlocBuilder<LocaleCubit, LocaleState>(
          builder: (context, state) {
            return ListView.builder(
              padding: const EdgeInsets.only(top: 20),
              itemCount: S.delegate.supportedLocales.length,
              itemBuilder: (context, index) {
                final lang = S.delegate.supportedLocales[index];
                final fullName = Utils.languageName(lang.languageCode);
                final isSelected =
                    state.locale.languageCode == lang.languageCode;

                return InkWell(
                  onTap: () {
                    context.read<LocaleCubit>().changeLocale(lang.languageCode);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 16,
                    ),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Theme.of(
                            context,
                          ).colorScheme.outline.withValues(alpha: 0.1),
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.bodyLarge,
                            children: [TextSpan(text: fullName)],
                          ),
                        ),
                        if (isSelected)
                          Icon(
                            Icons.check,
                            color: Theme.of(context).colorScheme.primary,
                          ),
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
